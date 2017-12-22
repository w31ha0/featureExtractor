.class Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;
.super Ljava/lang/Object;
.source "UpdateDialog.java"


# instance fields
.field public mCancelable:Z

.field public final mContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIconId:I

    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/UpdateDialog$1;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;-><init>(Landroid/content/Context;)V

    return-void
.end method
