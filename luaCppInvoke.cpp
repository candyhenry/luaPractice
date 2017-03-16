#include <iostream>
#include <string.h>
using namespace std;

extern "C"{
   #include "lua.h"
   #include "lauxlib.h"
   #include "lualib.h"
}

int main(){
   lua_State *L = luaL_newstate();
   if(L == 0){
     return 0;
   }
   int bRet = luaL_loadfile(L, "luaCppInvoke.lua");
   if(bRet){
     cout << "load file error" << endl;
     return 0 ;
   }
   lua_getglobal(L, "str");
   string str = lua_tostring(L, -1);
   cout  << "str = " << str << endl;
   
   lua_getglobal(L, "tbl");
   lua_getfield(L, -1, "name");
   str = lua_tostring(L, -1);
   cout << "tbl:name = " << str << endl;
   
   lua_getglobal(L, "add");
   lua_pushnumber(L, 10);
   lua_pushnumber(L, 20);
   int iRet = lua_pcall(L, 2, 1, 0);
   if(iRet){
     const char* erroMsg = lua_tostring(L, -1);
     cout << erroMsg << endl;
     lua_close(L);
     return 0;
   }
   if(lua_isnumber(L, -1)){
     double fValue = lua_tonumber(L, -1);
     cout  << "Result is " << fValue << endl;
   }
   lua_close(L);
   return 0;
}
