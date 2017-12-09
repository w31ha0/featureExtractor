.class final Lcom/wooboo/adlib_android/ImpressionAdView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/wooboo/adlib_android/a;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/ImpressionAdView$2;Lcom/wooboo/adlib_android/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->a:Lcom/wooboo/adlib_android/a;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->close()V

    .line 213
    iget-object v0, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->d()V

    .line 214
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    const/4 v1, -0x1

    .line 216
    const/4 v2, -0x2

    .line 214
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    iget-object v1, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v1, v0}, Lcom/wooboo/adlib_android/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Landroid/widget/RelativeLayout;)V

    .line 221
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->e()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/wooboo/adlib_android/ImpressionAdView$2$1;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 223
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getBtnWidth()I

    move-result v1

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getBtnHeight()I

    move-result v2

    .line 223
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    new-instance v1, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Landroid/widget/ImageButton;)V

    .line 227
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->f()Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 229
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->f()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    :try_start_0
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->f()Landroid/widget/ImageButton;

    move-result-object v1

    .line 233
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 234
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->g()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 233
    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :goto_0
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->f()Landroid/widget/ImageButton;

    move-result-object v1

    .line 239
    new-instance v2, Lcom/wooboo/adlib_android/ImpressionAdView$2$1$1;

    invoke-direct {v2, p0}, Lcom/wooboo/adlib_android/ImpressionAdView$2$1$1;-><init>(Lcom/wooboo/adlib_android/ImpressionAdView$2$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->e()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->f()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :try_start_1
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->e()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setContentView(Landroid/view/View;)V

    .line 251
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->a()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 253
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->h()I

    move-result v3

    .line 254
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->i()I

    move-result v4

    .line 251
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wooboo/adlib_android/ImpressionAdView;->showAtLocation(Landroid/view/View;III)V

    .line 255
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    .line 256
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->h()I

    move-result v1

    .line 257
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->i()I

    move-result v2

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getAdWidth()I

    move-result v3

    .line 258
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getAdHeight()I

    move-result v4

    .line 255
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wooboo/adlib_android/ImpressionAdView;->update(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :goto_1
    return-void

    .line 261
    :catch_0
    move-exception v0

    const-string v0, "Wooboo SDK"

    .line 262
    const-string v1, "Can not display an impressionAdView,please check params."

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
