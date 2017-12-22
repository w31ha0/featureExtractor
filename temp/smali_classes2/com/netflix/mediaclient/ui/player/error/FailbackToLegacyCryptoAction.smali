.class public Lcom/netflix/mediaclient/ui/player/error/FailbackToLegacyCryptoAction;
.super Lcom/netflix/mediaclient/service/error/action/RestartApplicationAction;
.source "FailbackToLegacyCryptoAction.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/action/RestartApplicationAction;-><init>(Landroid/app/Activity;)V

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 21
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "Blacklisted Widevine L3 plugin, fail back to legacy crypto scheme "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/error/FailbackToLegacyCryptoAction;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "nf_disable_widevine_l3_v3"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 23
    invoke-super {p0}, Lcom/netflix/mediaclient/service/error/action/RestartApplicationAction;->run()V

    .line 24
    return-void
.end method
