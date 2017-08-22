.class Lc/InAppBrowser$1$1;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 319
    iput-object p1, p0, Lc/InAppBrowser$1$1;->a:Lc/InAppBrowser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 322
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 323
    const-string v1, "type"

    const-string v2, "exit"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    iget-object v1, p0, Lc/InAppBrowser$1$1;->a:Lc/InAppBrowser$1;

    iget-object v1, v1, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lc/InAppBrowser;->a(Lc/InAppBrowser;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v0, "InAppBrowser"

    const-string v1, "Should never happen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
