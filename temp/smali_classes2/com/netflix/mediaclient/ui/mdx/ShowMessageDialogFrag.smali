.class public Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "ShowMessageDialogFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/CastPlayerHelper$CastPlayerDialog;


# static fields
.field private static final BUTTON_CODE:Ljava/lang/String; = "buttonCode"

.field private static final BUTTON_COUNT:Ljava/lang/String; = "buttonCount"

.field private static final BUTTON_NAME:Ljava/lang/String; = "buttonName"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final TAG:Ljava/lang/String; = "mdxui"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private final mClicked:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->mClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->mClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static newInstance(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;
    .locals 5

    .prologue
    .line 43
    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;-><init>()V

    .line 44
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "title"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    const-string/jumbo v0, "message"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    const-string/jumbo v0, "buttonCount"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->getOptions()[Landroid/util/Pair;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->getOptions()[Landroid/util/Pair;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "buttonName"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->getOptions()[Landroid/util/Pair;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "buttonCode"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;->getOptions()[Landroid/util/Pair;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v2
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "buttonCount"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 68
    new-array v5, v4, [Ljava/lang/String;

    .line 69
    new-array v6, v4, [Ljava/lang/String;

    move v0, v1

    .line 70
    :goto_0
    if-ge v0, v4, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "buttonName"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "buttonCode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    if-eqz v2, :cond_6

    .line 77
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 82
    :goto_1
    if-eqz v3, :cond_7

    .line 83
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 88
    :goto_2
    if-ge v4, v10, :cond_1

    .line 89
    const-string/jumbo v2, "mdxui"

    const-string/jumbo v3, "We are expecting at least one button!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    if-lez v4, :cond_2

    .line 93
    aget-object v1, v5, v1

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$1;

    invoke-direct {v2, p0, v6}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 117
    :cond_2
    if-le v4, v10, :cond_3

    .line 118
    aget-object v1, v5, v10

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;

    invoke-direct {v2, p0, v6}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$2;-><init>(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 142
    :cond_3
    if-le v4, v11, :cond_4

    .line 143
    aget-object v1, v5, v11

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;

    invoke-direct {v2, p0, v6}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 167
    :cond_4
    const/4 v1, 0x3

    if-le v4, v1, :cond_5

    .line 168
    const-string/jumbo v1, "mdxui"

    const-string/jumbo v2, "We can support up to 3 buttons!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 79
    :cond_6
    const-string/jumbo v2, "mdxui"

    const-string/jumbo v7, "No title..."

    invoke-static {v2, v7}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :cond_7
    const-string/jumbo v2, "mdxui"

    const-string/jumbo v3, "No message..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
