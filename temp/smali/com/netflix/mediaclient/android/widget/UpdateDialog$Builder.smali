.class public Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
.super Ljava/lang/Object;
.source "UpdateDialog.java"


# instance fields
.field private params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/UpdateDialog$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    .line 126
    return-void
.end method


# virtual methods
.method public create()Lcom/netflix/mediaclient/android/widget/UpdateDialog;
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;-><init>(Landroid/content/Context;)V

    .line 280
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setCancelable(Z)V

    .line 281
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 282
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 284
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIconId:I

    if-ltz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIconId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setIcon(I)V

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 299
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 300
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 302
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 303
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 306
    :cond_5
    return-object v0
.end method

.method public setCancelable(Z)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mCancelable:Z

    .line 247
    return-object p0
.end method

.method public setIcon(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIconId:I

    .line 175
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 185
    return-object p0
.end method

.method public setMessage(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 155
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 165
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 224
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 237
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 258
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 268
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 198
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 211
    return-object p0
.end method

.method public setTitle(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 135
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 145
    return-object p0
.end method

.method public show()Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->create()Lcom/netflix/mediaclient/android/widget/UpdateDialog;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 316
    return-object v0
.end method
