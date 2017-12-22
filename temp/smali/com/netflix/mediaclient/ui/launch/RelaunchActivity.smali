.class public Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;
.super Lcom/netflix/mediaclient/ui/launch/LaunchActivity;
.source "RelaunchActivity.java"


# static fields
.field private static final EXTRA_SOURCE:Ljava/lang/String; = "extra_source"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAutoLoginEnabled()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldCreateUiSessions()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldStartPerformanceLogging()Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    const-string/jumbo v1, "handleProfileActivated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
