.class final Lcom/wooboo/adlib_android/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/wooboo/adlib_android/c$a;


# static fields
.field private static final a:Landroid/graphics/Typeface;

.field private static final b:Landroid/graphics/Typeface;


# instance fields
.field private c:I

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/wooboo/adlib_android/c;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/wooboo/adlib_android/f;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ProgressBar;

.field private o:Z

.field private p:Z

.field private q:Lcom/wooboo/adlib_android/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 47
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/a;->a:Landroid/graphics/Typeface;

    .line 53
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 52
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/a;->b:Landroid/graphics/Typeface;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/wooboo/adlib_android/c;Landroid/content/Context;ZIID)V
    .locals 10

    .prologue
    .line 178
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 70
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/wooboo/adlib_android/a;->c:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/wooboo/adlib_android/a;->d:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->q:Lcom/wooboo/adlib_android/i;

    if-nez v0, :cond_0

    .line 180
    invoke-static {p2}, Lcom/wooboo/adlib_android/i;->a(Landroid/content/Context;)Lcom/wooboo/adlib_android/i;

    move-result-object v0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->q:Lcom/wooboo/adlib_android/i;

    .line 181
    :cond_0
    iput-boolean p3, p0, Lcom/wooboo/adlib_android/a;->p:Z

    .line 182
    iput-object p1, p0, Lcom/wooboo/adlib_android/a;->i:Lcom/wooboo/adlib_android/c;

    invoke-virtual {p1, p0}, Lcom/wooboo/adlib_android/c;->a(Lcom/wooboo/adlib_android/c$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->g:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->f:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->n:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/a;->o:Z

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setClickable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/wooboo/adlib_android/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/wooboo/adlib_android/c;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wooboo/adlib_android/a;->q:Lcom/wooboo/adlib_android/i;

    invoke-virtual {v5, v4}, Lcom/wooboo/adlib_android/i;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, p0, Lcom/wooboo/adlib_android/a;->q:Lcom/wooboo/adlib_android/i;

    invoke-virtual {v3, v4}, Lcom/wooboo/adlib_android/i;->b(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    move-object v3, v4

    :goto_0
    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "wooboo_logo.png"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v6, v4

    mul-double v6, v6, p6

    double-to-int v4, v6

    int-to-double v5, v5

    mul-double v5, v5, p6

    double-to-int v5, v5

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-gtz v1, :cond_9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    const/16 v4, 0x9

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v4, ".gif"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".GIF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_2
    new-instance v0, Lcom/wooboo/adlib_android/f;

    invoke-direct {v0, p2, v3}, Lcom/wooboo/adlib_android/f;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0, v6}, Lcom/wooboo/adlib_android/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/wooboo/adlib_android/f;->setId(I)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    const/16 v0, 0xf

    if-le v1, v0, :cond_d

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wooboo/adlib_android/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/wooboo/adlib_android/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    iget v2, p0, Lcom/wooboo/adlib_android/a;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_5
    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->addView(Landroid/view/View;)V

    :goto_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wooboo/adlib_android/a;->n:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->n:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->n:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    sget-object v2, Lcom/wooboo/adlib_android/a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v0, p0, Lcom/wooboo/adlib_android/a;->p:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    const-string v2, "Ads by Wooboo"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, p6

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    mul-int/lit8 v2, v2, 0x6

    sub-int v2, p5, v2

    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-lez v1, :cond_6

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->addView(Landroid/view/View;)V

    :cond_6
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->a(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setBackgroundColor(I)V

    .line 184
    return-void

    .line 182
    :cond_7
    :try_start_4
    invoke-direct {p0, v2}, Lcom/wooboo/adlib_android/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_10

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    :try_start_6
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "wooboo_logo.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_0

    :cond_9
    :try_start_7
    iget-boolean v4, p0, Lcom/wooboo/adlib_android/a;->p:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_6
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_a
    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x4

    :try_start_9
    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_7
    if-eqz v1, :cond_b

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_b
    :goto_8
    throw v0

    :cond_c
    :try_start_b
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->addView(Landroid/view/View;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v0, v3

    goto/16 :goto_2

    :cond_d
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wooboo/adlib_android/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/wooboo/adlib_android/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    iget v2, p0, Lcom/wooboo/adlib_android/a;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_e
    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    iget v2, p0, Lcom/wooboo/adlib_android/a;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v3

    goto/16 :goto_7

    :catch_4
    move-exception v2

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-object v0, v4

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object v0, v3

    goto/16 :goto_6

    :cond_10
    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wooboo/adlib_android/a;->a(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40400000    # 3.0f

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 475
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 474
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 477
    iget-boolean v2, p0, Lcom/wooboo/adlib_android/a;->p:Z

    if-nez v2, :cond_0

    .line 478
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v2, 0x7f

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput p3, v3, v8

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v4, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fdc000000000000L    # 0.4375

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 481
    :cond_0
    if-eqz p4, :cond_1

    .line 482
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0x1180d9

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Landroid/graphics/CornerPathEffect;

    invoke-direct {v3, v7}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 484
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/a;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/a;Z)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/a;->o:Z

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 90
    monitor-enter p0

    .line 92
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 93
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 92
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 95
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 100
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 103
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 104
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 106
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 107
    new-array v0, v0, [B

    .line 108
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 111
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_0

    .line 116
    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->q:Lcom/wooboo/adlib_android/i;

    invoke-virtual {v2, v1, v0}, Lcom/wooboo/adlib_android/i;->a(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :goto_1
    monitor-exit p0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_1

    .line 112
    :cond_0
    const/4 v6, 0x0

    :try_start_3
    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    add-int/2addr v4, v5

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    move-object v0, v7

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v7

    goto :goto_1
.end method

.method static synthetic b(Lcom/wooboo/adlib_android/a;)Lcom/wooboo/adlib_android/f;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    return-object v0
.end method

.method static synthetic c(Lcom/wooboo/adlib_android/a;)Lcom/wooboo/adlib_android/c;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->i:Lcom/wooboo/adlib_android/c;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :cond_2
    iput-object v1, p0, Lcom/wooboo/adlib_android/a;->e:Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object v1, p0, Lcom/wooboo/adlib_android/a;->g:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object v1, p0, Lcom/wooboo/adlib_android/a;->f:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_3
    iput-object v1, p0, Lcom/wooboo/adlib_android/a;->h:Landroid/graphics/drawable/Drawable;

    .line 153
    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    .line 633
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->i:Lcom/wooboo/adlib_android/c;

    if-eqz v0, :cond_3

    .line 634
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    .line 636
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/a;->o:Z

    if-nez v0, :cond_3

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/a;->o:Z

    .line 638
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 639
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 640
    const/high16 v0, 0x41a00000    # 20.0f

    .line 643
    const/high16 v1, 0x41a00000    # 20.0f

    .line 644
    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    if-eqz v2, :cond_1

    .line 645
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/f;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 646
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/f;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 648
    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v2}, Lcom/wooboo/adlib_android/f;->b()V

    :cond_1
    move v8, v1

    move v1, v0

    move v0, v8

    .line 650
    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 651
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 652
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v6, v1

    move v5, v0

    .line 655
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 656
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    .line 657
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    .line 655
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 659
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 660
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 661
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 662
    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3a83126f    # 0.001f

    .line 663
    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3a83126f    # 0.001f

    .line 661
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 666
    const-wide/16 v1, 0x12b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 668
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 669
    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 670
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 673
    new-instance v0, Lcom/wooboo/adlib_android/a$2;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/a$2;-><init>(Lcom/wooboo/adlib_android/a;)V

    .line 679
    const-wide/16 v1, 0x1f4

    .line 672
    invoke-virtual {p0, v0, v1, v2}, Lcom/wooboo/adlib_android/a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 680
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    if-eqz v0, :cond_2

    .line 681
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0, v7}, Lcom/wooboo/adlib_android/f;->startAnimation(Landroid/view/animation/Animation;)V

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 684
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 694
    :cond_3
    :goto_1
    return-void

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->i:Lcom/wooboo/adlib_android/c;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/c;->a()V

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wooboo/adlib_android/a;->o:Z

    goto :goto_1

    :cond_5
    move v6, v0

    move v5, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 501
    new-instance v0, Lcom/wooboo/adlib_android/a$3;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/a$3;-><init>(Lcom/wooboo/adlib_android/a;)V

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->post(Ljava/lang/Runnable;)Z

    .line 510
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 356
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/wooboo/adlib_android/a;->d:I

    .line 357
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/wooboo/adlib_android/a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/a;->p:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/wooboo/adlib_android/a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->postInvalidate()V

    .line 362
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/wooboo/adlib_android/a$1;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/a$1;-><init>(Lcom/wooboo/adlib_android/a;)V

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Lcom/wooboo/adlib_android/a;->g()V

    .line 127
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/f;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/f;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 133
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/f;->a()V

    .line 159
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 550
    if-nez v0, :cond_1

    .line 551
    invoke-virtual {p0, v7}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    .line 575
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 552
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 556
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->getLeft()I

    move-result v2

    .line 557
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->getTop()I

    move-result v3

    .line 558
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->getRight()I

    move-result v4

    .line 559
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->getBottom()I

    move-result v5

    .line 561
    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    int-to-float v2, v4

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    int-to-float v0, v3

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_2

    int-to-float v0, v5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 562
    :cond_2
    invoke-virtual {p0, v6}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    goto :goto_0

    .line 564
    :cond_3
    invoke-virtual {p0, v7}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    goto :goto_0

    .line 566
    :cond_4
    if-ne v0, v7, :cond_6

    .line 567
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 568
    invoke-direct {p0}, Lcom/wooboo/adlib_android/a;->h()V

    .line 571
    :cond_5
    invoke-virtual {p0, v6}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    goto :goto_0

    .line 572
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 573
    invoke-virtual {p0, v6}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 581
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    .line 589
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 582
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-direct {p0}, Lcom/wooboo/adlib_android/a;->h()V

    .line 587
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/f;->b()V

    .line 165
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/f;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/f;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 167
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_0
    iput-object v1, p0, Lcom/wooboo/adlib_android/a;->l:Lcom/wooboo/adlib_android/f;

    .line 172
    :cond_1
    return-void
.end method

.method protected final f()Lcom/wooboo/adlib_android/c;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->i:Lcom/wooboo/adlib_android/c;

    return-object v0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 700
    return-void
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 595
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 596
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/a;->p:Z

    if-nez v0, :cond_0

    .line 597
    if-eqz p1, :cond_1

    .line 598
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 529
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 530
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 531
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    .line 533
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 538
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 539
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/wooboo/adlib_android/a;->h()V

    .line 543
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setPressed(Z)V

    .line 544
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 382
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 384
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/a;->p:Z

    if-nez v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 409
    :goto_0
    if-nez v0, :cond_0

    .line 410
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/wooboo/adlib_android/a;->i:Lcom/wooboo/adlib_android/c;

    invoke-virtual {v2}, Lcom/wooboo/adlib_android/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_0

    .line 413
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 414
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 415
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 416
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 418
    int-to-float v2, p1

    .line 420
    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 421
    const/16 v0, 0x8

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-boolean v1, p0, Lcom/wooboo/adlib_android/a;->p:Z

    if-nez v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 431
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/a;->p:Z

    if-nez v0, :cond_2

    .line 432
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 433
    invoke-direct {p0}, Lcom/wooboo/adlib_android/a;->g()V

    .line 435
    iget v1, p0, Lcom/wooboo/adlib_android/a;->c:I

    .line 434
    invoke-direct {p0, v0, v5, v1}, Lcom/wooboo/adlib_android/a;->a(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/wooboo/adlib_android/a;->e:Landroid/graphics/drawable/Drawable;

    .line 437
    const v1, -0x1180d9

    const/16 v2, -0x4c00

    .line 436
    invoke-direct {p0, v0, v1, v2}, Lcom/wooboo/adlib_android/a;->a(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/wooboo/adlib_android/a;->g:Landroid/graphics/drawable/Drawable;

    .line 439
    iget v1, p0, Lcom/wooboo/adlib_android/a;->c:I

    const/4 v2, 0x1

    .line 438
    invoke-direct {p0, v0, v5, v1, v2}, Lcom/wooboo/adlib_android/a;->a(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->f:Landroid/graphics/drawable/Drawable;

    .line 440
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    :cond_2
    return-void

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 369
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/wooboo/adlib_android/a;->c:I

    .line 370
    return-void
.end method

.method public final setPressed(Z)V
    .locals 3

    .prologue
    .line 608
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/wooboo/adlib_android/a;->o:Z

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 609
    iget v0, p0, Lcom/wooboo/adlib_android/a;->d:I

    .line 611
    if-eqz p1, :cond_4

    .line 612
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wooboo/adlib_android/a;->h:Landroid/graphics/drawable/Drawable;

    .line 613
    iget-object v0, p0, Lcom/wooboo/adlib_android/a;->g:Landroid/graphics/drawable/Drawable;

    .line 614
    const/high16 v1, -0x1000000

    move v2, v1

    move-object v1, v0

    move v0, v2

    .line 619
    :goto_0
    invoke-virtual {p0, v1}, Lcom/wooboo/adlib_android/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 624
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 628
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/a;->invalidate()V

    .line 630
    :cond_3
    return-void

    .line 616
    :cond_4
    iget-object v1, p0, Lcom/wooboo/adlib_android/a;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
