//
//  dataSave.c
//  SciCalc
//
//  Created by John Henry on 8/7/17.
//  Copyright © 2017 John Henry. All rights reserved.
//

#include "data.h"
#include <stdio.h>
#include <errno.h>
#include <string.h>

float Storage;

static void io(size_t(*ffunc)(), const char*option){
    errno = 0;
    FILE*f = fopen(getDocumentsDir(), option);
    if( f ){
        ffunc(&Storage, sizeof(Storage), 1, f);
        fclose(f);
    }else{
        printf("Error %s \n", strerror(errno));
    }
}

void LoadStorage(void){
    io(fread, "rb");
}
void SaveStorage(void){
    io(fwrite, "wb");
}
