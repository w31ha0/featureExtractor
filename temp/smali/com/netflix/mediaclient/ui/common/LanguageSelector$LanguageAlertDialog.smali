.class Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;
.super Landroid/support/v7/app/AlertDialog;
.source "LanguageSelector.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/CastPlayerHelper$CastPlayerDialog;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    .line 405
    invoke-direct {p0, p2}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 406
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Landroid/content/Context;Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;-><init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Landroid/content/Context;)V

    return-void
.end method
