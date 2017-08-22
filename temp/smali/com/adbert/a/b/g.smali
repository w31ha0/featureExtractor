.class public final enum Lcom/adbert/a/b/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adbert/a/b/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adbert/a/b/g;

.field public static final enum b:Lcom/adbert/a/b/g;

.field public static final enum c:Lcom/adbert/a/b/g;

.field public static final enum d:Lcom/adbert/a/b/g;

.field public static final enum e:Lcom/adbert/a/b/g;

.field public static final enum f:Lcom/adbert/a/b/g;

.field public static final enum g:Lcom/adbert/a/b/g;

.field public static final enum h:Lcom/adbert/a/b/g;

.field public static final enum i:Lcom/adbert/a/b/g;

.field public static final enum j:Lcom/adbert/a/b/g;

.field public static final enum k:Lcom/adbert/a/b/g;

.field public static final enum l:Lcom/adbert/a/b/g;

.field public static final enum m:Lcom/adbert/a/b/g;

.field public static final enum n:Lcom/adbert/a/b/g;

.field public static final enum o:Lcom/adbert/a/b/g;

.field public static final enum p:Lcom/adbert/a/b/g;

.field public static final enum q:Lcom/adbert/a/b/g;

.field public static final enum r:Lcom/adbert/a/b/g;

.field public static final enum s:Lcom/adbert/a/b/g;

.field public static final enum t:Lcom/adbert/a/b/g;

.field public static final enum u:Lcom/adbert/a/b/g;

.field public static final enum v:Lcom/adbert/a/b/g;

.field public static final enum w:Lcom/adbert/a/b/g;

.field public static final enum x:Lcom/adbert/a/b/g;

.field private static final synthetic z:[Lcom/adbert/a/b/g;


# instance fields
.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "START"

    const-string v2, "Starting ad request"

    invoke-direct {v0, v1, v4, v2}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->a:Lcom/adbert/a/b/g;

    .line 5
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "OK_DOWNLOAD"

    const-string v2, "Ad finished loading"

    invoke-direct {v0, v1, v5, v2}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    .line 6
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_ID_NULL"

    const-string v2, "Please type the appId and appKey"

    invoke-direct {v0, v1, v6, v2}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->c:Lcom/adbert/a/b/g;

    .line 7
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_MODE"

    const-string v2, "mode is not match"

    invoke-direct {v0, v1, v7, v2}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->d:Lcom/adbert/a/b/g;

    .line 8
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_CONNECTION"

    const-string v2, "Connection Error"

    invoke-direct {v0, v1, v8, v2}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->e:Lcom/adbert/a/b/g;

    .line 9
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "SUCCESS_CONNECTION"

    const/4 v2, 0x5

    const-string v3, "Connection Success"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->f:Lcom/adbert/a/b/g;

    .line 10
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_SERVICE"

    const/4 v2, 0x6

    const-string v3, "Service Unavailable"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->g:Lcom/adbert/a/b/g;

    .line 11
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_JSON_EMPTY"

    const/4 v2, 0x7

    const-string v3, "Could not request ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->h:Lcom/adbert/a/b/g;

    .line 12
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_TYPE_NULL"

    const/16 v2, 0x8

    const-string v3, "Parse data error : type error"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->i:Lcom/adbert/a/b/g;

    .line 13
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_JSON_PARSE"

    const/16 v2, 0x9

    const-string v3, "Parse data error : "

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->j:Lcom/adbert/a/b/g;

    .line 14
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_BITMAP_NULL"

    const/16 v2, 0xa

    const-string v3, "fail to load image"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->k:Lcom/adbert/a/b/g;

    .line 15
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_DOWNLOAD_FILE"

    const/16 v2, 0xb

    const-string v3, "fail to load video"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->l:Lcom/adbert/a/b/g;

    .line 16
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_RESOURCE_FORMAT"

    const/16 v2, 0xc

    const-string v3, "fail to get url"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->m:Lcom/adbert/a/b/g;

    .line 17
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "VIDEO_NOT_SUPPORT"

    const/16 v2, 0xd

    const-string v3, "video is not supported on this device"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->n:Lcom/adbert/a/b/g;

    .line 18
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "READY"

    const/16 v2, 0xe

    const-string v3, "Interstitial Ad is ready"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    .line 19
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "NOT_READY"

    const/16 v2, 0xf

    const-string v3, "AdbertInterstitial AD is not ready"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->p:Lcom/adbert/a/b/g;

    .line 20
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_JSON_EMPTY_INTERS"

    const/16 v2, 0x10

    const-string v3, "Could not request AdbertInterstitial AD"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->q:Lcom/adbert/a/b/g;

    .line 21
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ClassCastException"

    const/16 v2, 0x11

    const-string v3, "Class Not Found : com.google.android.gms.ads.identifier.AdvertisingIdClient."

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->r:Lcom/adbert/a/b/g;

    .line 22
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "FAIL_GET_ID"

    const/16 v2, 0x12

    const-string v3, "Fail to get advertising id."

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->s:Lcom/adbert/a/b/g;

    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_ID_NULL_TRACE"

    const/16 v2, 0x13

    const-string v3, "Please type the id"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->t:Lcom/adbert/a/b/g;

    .line 23
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "ERROR_BIT_TYPE_NULL"

    const/16 v2, 0x14

    const-string v3, "Please set the BitADType."

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->u:Lcom/adbert/a/b/g;

    .line 24
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "TIMEOUT"

    const/16 v2, 0x15

    const-string v3, "Request Timeout"

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->v:Lcom/adbert/a/b/g;

    .line 25
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "BOXTYPE_NOT_MATCH_VERSION"

    const/16 v2, 0x16

    const-string v3, "native_paper fail : minimum Android SDK version is 14."

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->w:Lcom/adbert/a/b/g;

    .line 26
    new-instance v0, Lcom/adbert/a/b/g;

    const-string v1, "UUID_EMPTY"

    const/16 v2, 0x17

    const-string v3, "Could not get Advertising ID,Ensure your Google Play Services is version 4.0+ and supports to Advertising ID."

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/g;->x:Lcom/adbert/a/b/g;

    .line 3
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/adbert/a/b/g;

    sget-object v1, Lcom/adbert/a/b/g;->a:Lcom/adbert/a/b/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adbert/a/b/g;->c:Lcom/adbert/a/b/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adbert/a/b/g;->d:Lcom/adbert/a/b/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adbert/a/b/g;->e:Lcom/adbert/a/b/g;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adbert/a/b/g;->f:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adbert/a/b/g;->g:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adbert/a/b/g;->h:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adbert/a/b/g;->i:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adbert/a/b/g;->j:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adbert/a/b/g;->k:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adbert/a/b/g;->l:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adbert/a/b/g;->m:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adbert/a/b/g;->n:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/adbert/a/b/g;->p:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/adbert/a/b/g;->q:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/adbert/a/b/g;->r:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/adbert/a/b/g;->s:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/adbert/a/b/g;->t:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/adbert/a/b/g;->u:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/adbert/a/b/g;->v:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/adbert/a/b/g;->w:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/adbert/a/b/g;->x:Lcom/adbert/a/b/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adbert/a/b/g;->z:[Lcom/adbert/a/b/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/adbert/a/b/g;->y:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adbert/a/b/g;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/adbert/a/b/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/b/g;

    return-object v0
.end method

.method public static values()[Lcom/adbert/a/b/g;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/adbert/a/b/g;->z:[Lcom/adbert/a/b/g;

    invoke-virtual {v0}, [Lcom/adbert/a/b/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adbert/a/b/g;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adbert/a/b/g;->y:Ljava/lang/String;

    return-object v0
.end method
