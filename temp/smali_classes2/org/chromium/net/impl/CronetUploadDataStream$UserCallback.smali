.class final enum Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;
.super Ljava/lang/Enum;
.source "CronetUploadDataStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

.field public static final enum GET_LENGTH:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

.field public static final enum NOT_IN_CALLBACK:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

.field public static final enum READ:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

.field public static final enum REWIND:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    const-string/jumbo v1, "READ"

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->READ:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    .line 84
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    const-string/jumbo v1, "REWIND"

    invoke-direct {v0, v1, v3}, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->REWIND:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    .line 85
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    const-string/jumbo v1, "GET_LENGTH"

    invoke-direct {v0, v1, v4}, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->GET_LENGTH:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    .line 86
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    const-string/jumbo v1, "NOT_IN_CALLBACK"

    invoke-direct {v0, v1, v5}, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    sget-object v1, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->READ:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->REWIND:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->GET_LENGTH:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->$VALUES:[Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    return-object v0
.end method

.method public static values()[Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->$VALUES:[Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    invoke-virtual {v0}, [Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    return-object v0
.end method
