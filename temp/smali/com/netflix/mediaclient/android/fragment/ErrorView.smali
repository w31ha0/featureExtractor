.class public Lcom/netflix/mediaclient/android/fragment/ErrorView;
.super Ljava/lang/Object;
.source "ErrorView.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)Landroid/view/View;
    .locals 2

    .prologue
    .line 18
    const v0, 0x7f030065

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;

    invoke-direct {v1, v0, p1}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    .line 22
    return-object v0
.end method
