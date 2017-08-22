.class public Lcom/adbert/b/h;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/b/h$a;
    }
.end annotation


# instance fields
.field a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "download"

    aput-object v2, v0, v1

    const-string v1, "web"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fb"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "line"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/adbert/b/h;->a:[Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p2}, Lcom/adbert/b/h;->setOrientation(I)V

    .line 26
    sget-object v0, Lcom/adbert/a/b/e;->c:Lcom/adbert/a/b/e;

    invoke-virtual {v0}, Lcom/adbert/a/b/e;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adbert/b/h;->setBackgroundColor(I)V

    .line 27
    if-ne p2, v3, :cond_0

    .line 28
    invoke-virtual {p0, v3}, Lcom/adbert/b/h;->setGravity(I)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/adbert/b/h;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public a([ZILcom/adbert/b/h$a;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x2

    .line 37
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/adbert/b/h;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 38
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adbert/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, v3}, Lcom/adbert/b/h;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 41
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adbert/b/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    sget-object v4, Lcom/adbert/a/b/f;->b:Lcom/adbert/a/b/f;

    invoke-virtual {p0}, Lcom/adbert/b/h;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/adbert/a/b/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput p2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput p2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    aget-boolean v4, p1, v1

    if-eqz v4, :cond_0

    .line 49
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    :goto_1
    new-instance v3, Lcom/adbert/b/h$1;

    invoke-direct {v3, p0, p3, v1}, Lcom/adbert/b/h$1;-><init>(Lcom/adbert/b/h;Lcom/adbert/b/h$a;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method
