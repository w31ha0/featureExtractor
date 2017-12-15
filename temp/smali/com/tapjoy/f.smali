.class public final Lcom/tapjoy/f;
.super Ljava/lang/Object;
.source "TapjoyDisplayAdSize.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "320x50"

    sput-object v0, Lcom/tapjoy/f;->a:Ljava/lang/String;

    .line 12
    const-string v0, "640x100"

    sput-object v0, Lcom/tapjoy/f;->b:Ljava/lang/String;

    .line 15
    const-string v0, "768x90"

    sput-object v0, Lcom/tapjoy/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
