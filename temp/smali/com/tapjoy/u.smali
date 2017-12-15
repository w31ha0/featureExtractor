.class public final Lcom/tapjoy/u;
.super Ljava/lang/Object;
.source "TapjoyFeaturedApp.java"


# static fields
.field private static b:Lcom/tapjoy/h;


# instance fields
.field private a:Lcom/tapjoy/a;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/u;->b:Lcom/tapjoy/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/u;->a:Lcom/tapjoy/a;

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/u;->d:I

    .line 26
    const-string v0, "Featured App"

    iput-object v0, p0, Lcom/tapjoy/u;->e:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/tapjoy/u;->c:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/tapjoy/h;

    invoke-direct {v0}, Lcom/tapjoy/h;-><init>()V

    sput-object v0, Lcom/tapjoy/u;->b:Lcom/tapjoy/h;

    .line 36
    return-void
.end method
