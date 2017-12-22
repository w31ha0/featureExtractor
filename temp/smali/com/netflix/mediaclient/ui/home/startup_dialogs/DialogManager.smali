.class public Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DialogManager"

.field private static sInstance:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;


# instance fields
.field private isLocked:Z

.field private mDialogQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;",
            ">;"
        }
    .end annotation
.end field

.field private mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/netflix/mediaclient/ui/home/HomeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mDialogQueue:Ljava/util/Queue;

    .line 66
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "DialogManager initialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mDialogQueue:Ljava/util/Queue;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OnRampDialogManageable;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mDialogQueue:Ljava/util/Queue;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OfflineTutorialDialogManageable;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/OfflineTutorialDialogManageable;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mDialogQueue:Ljava/util/Queue;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SocialOptInDialogManageable;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SocialOptInDialogManageable;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mDialogQueue:Ljava/util/Queue;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mDialogQueue:Ljava/util/Queue;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/startup_dialogs/GooglePlayDialogManageable;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/GooglePlayDialogManageable;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method private canDialogBeDisplayedSafely(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isDialogFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "a DialogFragment is already visible - can\'t display dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isInstanceStateSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Activity has saved instance state - can\'t display dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Activity is destroyed - can\'t display dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_2
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v1, "Dialog can be safely shown."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->sInstance:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->sInstance:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->sInstance:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->setOwner(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->sInstance:Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;

    return-object v0
.end method

.method private setOwner(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mOwner:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method


# virtual methods
.method public displayDialogsIfNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v2, "displayDialogsIfNeeded;"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v2, "Owner is null!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 117
    :cond_0
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->isLocked:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->canDialogBeDisplayedSafely(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    :cond_1
    const-string/jumbo v0, "DialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "..could display dialog... isLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->isLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 119
    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mDialogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mDialogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;

    .line 125
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;->shouldShow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    const-string/jumbo v1, "DialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showing something! -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;->show()Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method protected getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 52
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->isLocked:Z

    .line 43
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;->isLocked:Z

    .line 47
    return-void
.end method
