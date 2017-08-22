.class public Lcom/taiwanmobile/pt/util/a;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-array v0, v5, [Ljava/lang/String;

    .line 31
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v2

    .line 32
    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v3

    .line 33
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v4

    .line 30
    sput-object v0, Lcom/taiwanmobile/pt/util/a;->a:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    .line 37
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    .line 38
    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v4

    const-string v1, "android.permission.VIBRATE"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    .line 39
    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 40
    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    .line 35
    sput-object v0, Lcom/taiwanmobile/pt/util/a;->b:[Ljava/lang/String;

    .line 45
    return-void
.end method
