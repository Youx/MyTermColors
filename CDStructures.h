/*
 *     Generated by class-dump 3.1.1.
 *
 *     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2006 by Steve Nygard.
 */

@class TTTextStorage;

struct CGContext;

/*struct _NSPoint {
    float x;
    float y;
};

struct _NSRange {
    unsigned int location;
    unsigned int length;
};

struct _NSRect {
    struct _NSPoint origin;
    struct _NSSize size;
};

struct _NSSize {
    float width;
    float height;
};*/

struct _NSZone;

struct __CFURL;

struct __CFUUID;

/*struct fd_set {
    int fds_bits[32];
};*/

struct storage_list {
    TTTextStorage *_field1;
    struct storage_list *_field2;
};

typedef struct {
    unsigned int y;
    unsigned int x;
} CDAnonymousStruct8;

typedef struct {
    unsigned int _field1;
    unsigned int _field2;
    unsigned int _field3;
    char *_field4;
    unsigned int _field5;
    unsigned int _field6;
} CDAnonymousStruct2;

typedef struct {
    unsigned int line;
    unsigned int column;
} CDAnonymousStruct3;

typedef struct {
    unsigned int bold:1;
    unsigned int dim:1;
    unsigned int underline:1;
    unsigned int inverted:1;
    unsigned int blink:1;
    unsigned int invisible:1;
    unsigned int tab:1;
    unsigned int marked:1;
    unsigned int custom:1;
    unsigned int ansiForegroundColor;
    unsigned int ansiBackgroundColor;
} CDAnonymousStruct4;

typedef struct {
    unsigned int _field1;
    unsigned int _field2;
} CDAnonymousStruct5;

typedef struct {
    unsigned int _field1;
    struct {
        unsigned int :1;
        unsigned int :1;
        unsigned int :1;
        unsigned int :1;
        unsigned int :1;
        unsigned int :1;
        unsigned int :1;
        unsigned int :1;
        unsigned int :1;
        unsigned int _field1;
        unsigned int _field2;
    } _field2;
} CDAnonymousStruct6;

typedef struct {
} CDAnonymousStruct1;

typedef struct {
    unsigned short _field1;
    CDAnonymousStruct1 *_field2;
    unsigned int _field3;
} CDAnonymousStruct7;


