.class public abstract Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;
.super Ljava/lang/Object;
.source "DialogManageable.java"


# instance fields
.field protected manager:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;->manager:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;

    .line 19
    return-void
.end method


# virtual methods
.method public getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;->manager:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    return-object v0
.end method

.method abstract shouldShow()Z
.end method

.method abstract show()Z
.end method
