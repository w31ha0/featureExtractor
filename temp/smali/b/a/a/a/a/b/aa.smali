.class public final enum Lb/a/a/a/a/b/aa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/a/b/aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/a/b/aa;

.field public static final enum b:Lb/a/a/a/a/b/aa;

.field public static final enum c:Lb/a/a/a/a/b/aa;

.field public static final enum d:Lb/a/a/a/a/b/aa;

.field public static final enum e:Lb/a/a/a/a/b/aa;

.field public static final enum f:Lb/a/a/a/a/b/aa;

.field public static final enum g:Lb/a/a/a/a/b/aa;

.field private static final synthetic i:[Lb/a/a/a/a/b/aa;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 75
    new-instance v0, Lb/a/a/a/a/b/aa;

    const-string v1, "WIFI_MAC_ADDRESS"

    invoke-direct {v0, v1, v6, v4}, Lb/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/a/a/b/aa;->a:Lb/a/a/a/a/b/aa;

    .line 76
    new-instance v0, Lb/a/a/a/a/b/aa;

    const-string v1, "BLUETOOTH_MAC_ADDRESS"

    invoke-direct {v0, v1, v4, v5}, Lb/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/a/a/b/aa;->b:Lb/a/a/a/a/b/aa;

    .line 79
    new-instance v0, Lb/a/a/a/a/b/aa;

    const-string v1, "FONT_TOKEN"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v5, v2}, Lb/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/a/a/b/aa;->c:Lb/a/a/a/a/b/aa;

    .line 80
    new-instance v0, Lb/a/a/a/a/b/aa;

    const-string v1, "ANDROID_ID"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, Lb/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/a/a/b/aa;->d:Lb/a/a/a/a/b/aa;

    .line 81
    new-instance v0, Lb/a/a/a/a/b/aa;

    const-string v1, "ANDROID_DEVICE_ID"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v8, v2}, Lb/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/a/a/b/aa;->e:Lb/a/a/a/a/b/aa;

    .line 82
    new-instance v0, Lb/a/a/a/a/b/aa;

    const-string v1, "ANDROID_SERIAL"

    const/4 v2, 0x5

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/a/a/b/aa;->f:Lb/a/a/a/a/b/aa;

    .line 83
    new-instance v0, Lb/a/a/a/a/b/aa;

    const-string v1, "ANDROID_ADVERTISING_ID"

    const/4 v2, 0x6

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/b/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/a/a/b/aa;->g:Lb/a/a/a/a/b/aa;

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [Lb/a/a/a/a/b/aa;

    sget-object v1, Lb/a/a/a/a/b/aa;->a:Lb/a/a/a/a/b/aa;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/a/a/a/b/aa;->b:Lb/a/a/a/a/b/aa;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/a/a/b/aa;->c:Lb/a/a/a/a/b/aa;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/a/a/b/aa;->d:Lb/a/a/a/a/b/aa;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/a/a/a/b/aa;->e:Lb/a/a/a/a/b/aa;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lb/a/a/a/a/b/aa;->f:Lb/a/a/a/a/b/aa;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/a/a/a/b/aa;->g:Lb/a/a/a/a/b/aa;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/a/a/b/aa;->i:[Lb/a/a/a/a/b/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lb/a/a/a/a/b/aa;->h:I

    .line 89
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/a/b/aa;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lb/a/a/a/a/b/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/b/aa;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/a/b/aa;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lb/a/a/a/a/b/aa;->i:[Lb/a/a/a/a/b/aa;

    invoke-virtual {v0}, [Lb/a/a/a/a/b/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/a/b/aa;

    return-object v0
.end method
