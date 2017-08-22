.class Lc/InAppBrowser$1$3;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/InAppBrowser$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/InAppBrowser$1;


# direct methods
.method constructor <init>(Lc/InAppBrowser$1;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lc/InAppBrowser$1$3;->a:Lc/InAppBrowser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lc/InAppBrowser$1$3;->a:Lc/InAppBrowser$1;

    iget-object v0, v0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v0}, Lc/InAppBrowser;->c(Lc/InAppBrowser;)V

    .line 375
    return-void
.end method
