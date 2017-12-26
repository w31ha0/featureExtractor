.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 1800
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
