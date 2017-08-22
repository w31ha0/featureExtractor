.class public Lcom/novel/reader/adapter/ListNothingAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListNothingAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/ListNothingAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/novel/reader/adapter/ListNothingAdapter;->activity:Landroid/app/Activity;

    .line 20
    iget-object v0, p0, Lcom/novel/reader/adapter/ListNothingAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/novel/reader/adapter/ListNothingAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 33
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    move-object v1, p2

    .line 38
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 39
    sget-object v2, Lcom/novel/reader/adapter/ListNothingAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    :cond_0
    const v2, 0x7f0e00d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, "text":Landroid/widget/TextView;
    const-string/jumbo v2, "\u7121\u8cc7\u6599"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-object v1
.end method
