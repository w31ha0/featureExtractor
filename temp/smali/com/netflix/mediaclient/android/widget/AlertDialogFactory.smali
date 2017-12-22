.class public final Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;
.super Ljava/lang/Object;
.source "AlertDialogFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_dialog"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static activateLinkIfExist(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 264
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 268
    :cond_0
    return-void
.end method

.method public static createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 10

    .prologue
    .line 70
    instance-of v0, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    if-eqz v0, :cond_0

    .line 71
    check-cast p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    .line 72
    iget-object v1, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;->title:Ljava/lang/String;

    iget-object v2, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;->message:Ljava/lang/String;

    iget-object v4, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;->posButtonLabel:Ljava/lang/String;

    iget-object v5, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;->posButtonHandler:Ljava/lang/Runnable;

    iget-object v6, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;->negButtonLabel:Ljava/lang/String;

    iget-object v7, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;->negButtonHandler:Ljava/lang/Runnable;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->title:Ljava/lang/String;

    iget-object v2, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->message:Ljava/lang/String;

    iget-object v4, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->posButtonLabel:Ljava/lang/String;

    iget-object v5, p2, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->posButtonHandler:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v3, p1

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createOneButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public static createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 138
    invoke-static {p2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->processMessage(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 141
    if-eqz p4, :cond_1

    .line 148
    :goto_0
    if-eqz p6, :cond_2

    .line 154
    :goto_1
    if-eqz p3, :cond_3

    .line 155
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$1;

    invoke-direct {v1, p5, p3, p9}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$1;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p4, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 166
    if-nez p8, :cond_0

    .line 167
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;

    invoke-direct {v1, p7, p3, p9}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$2;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p6, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 187
    :cond_0
    :goto_2
    return-object v0

    .line 144
    :cond_1
    const v1, 0x7f090156

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 151
    :cond_2
    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {v0, p4, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 182
    if-nez p8, :cond_0

    .line 183
    invoke-virtual {v0, p6, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    goto :goto_2
.end method

.method public static createOneButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 10

    .prologue
    .line 55
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;ZLjava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static noNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    const-string/jumbo p0, ""

    .line 194
    :cond_0
    return-object p0
.end method

.method private static processMessage(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 4

    .prologue
    .line 93
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-string/jumbo v0, "netflix.com/changeplan."

    const-string/jumbo v1, "netflix.com/changeplan"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    const/16 v1, 0xf

    :try_start_0
    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    const-string/jumbo v2, "nf_dialog"

    const-string/jumbo v3, "SPY-10546: Unable to add links to spannable"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
