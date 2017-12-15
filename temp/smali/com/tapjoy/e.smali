.class public final Lcom/tapjoy/e;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"


# static fields
.field private static a:Lcom/tapjoy/m;

.field private static b:Lcom/tapjoy/h;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static final i:[B


# instance fields
.field private c:Landroid/content/Context;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private j:[B

.field private k:I

.field private l:I

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/e;->b:Lcom/tapjoy/h;

    .line 261
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/e;->i:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "Display Ad"

    iput-object v0, p0, Lcom/tapjoy/e;->h:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/tapjoy/f;->a:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/e;->d:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/tapjoy/e;->c:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/tapjoy/h;

    invoke-direct {v0}, Lcom/tapjoy/h;-><init>()V

    sput-object v0, Lcom/tapjoy/e;->b:Lcom/tapjoy/h;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tapjoy/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tapjoy/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a([BII)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 360
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tapjoy/e;->j:[B

    .line 361
    iput v1, p0, Lcom/tapjoy/e;->k:I

    .line 362
    iput-boolean v1, p0, Lcom/tapjoy/e;->m:Z

    .line 363
    iput v1, p0, Lcom/tapjoy/e;->l:I

    .line 369
    if-gez p3, :cond_0

    .line 371
    iput-boolean v5, p0, Lcom/tapjoy/e;->m:Z

    :cond_0
    move v0, v1

    move v1, p2

    .line 373
    :goto_0
    if-ge v0, p3, :cond_1

    .line 378
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    .line 380
    const/16 v3, 0x3d

    if-ne v1, v3, :cond_3

    .line 383
    iput-boolean v5, p0, Lcom/tapjoy/e;->m:Z

    .line 411
    :cond_1
    iget-boolean v0, p0, Lcom/tapjoy/e;->m:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tapjoy/e;->l:I

    if-eqz v0, :cond_2

    .line 413
    iget v0, p0, Lcom/tapjoy/e;->n:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/tapjoy/e;->n:I

    .line 414
    iget v0, p0, Lcom/tapjoy/e;->l:I

    packed-switch v0, :pswitch_data_0

    .line 426
    :cond_2
    :goto_1
    return-void

    .line 388
    :cond_3
    if-ltz v1, :cond_4

    sget-object v3, Lcom/tapjoy/e;->i:[B

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 390
    sget-object v3, Lcom/tapjoy/e;->i:[B

    aget-byte v1, v3, v1

    .line 391
    if-ltz v1, :cond_4

    .line 393
    iget v3, p0, Lcom/tapjoy/e;->l:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tapjoy/e;->l:I

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/tapjoy/e;->l:I

    .line 394
    iget v3, p0, Lcom/tapjoy/e;->n:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tapjoy/e;->n:I

    .line 395
    iget v1, p0, Lcom/tapjoy/e;->l:I

    if-nez v1, :cond_4

    .line 397
    iget-object v1, p0, Lcom/tapjoy/e;->j:[B

    iget v3, p0, Lcom/tapjoy/e;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tapjoy/e;->k:I

    iget v4, p0, Lcom/tapjoy/e;->n:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 398
    iget-object v1, p0, Lcom/tapjoy/e;->j:[B

    iget v3, p0, Lcom/tapjoy/e;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tapjoy/e;->k:I

    iget v4, p0, Lcom/tapjoy/e;->n:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 399
    iget-object v1, p0, Lcom/tapjoy/e;->j:[B

    iget v3, p0, Lcom/tapjoy/e;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tapjoy/e;->k:I

    iget v4, p0, Lcom/tapjoy/e;->n:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 373
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 417
    :pswitch_0
    iget v0, p0, Lcom/tapjoy/e;->n:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/tapjoy/e;->n:I

    .line 418
    iget-object v0, p0, Lcom/tapjoy/e;->j:[B

    iget v1, p0, Lcom/tapjoy/e;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/e;->k:I

    iget v2, p0, Lcom/tapjoy/e;->n:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/tapjoy/e;->j:[B

    iget v1, p0, Lcom/tapjoy/e;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/e;->k:I

    iget v2, p0, Lcom/tapjoy/e;->n:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 422
    iget-object v0, p0, Lcom/tapjoy/e;->j:[B

    iget v1, p0, Lcom/tapjoy/e;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/e;->k:I

    iget v2, p0, Lcom/tapjoy/e;->n:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    .line 414
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/tapjoy/e;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tapjoy/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    .line 164
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 170
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 172
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 175
    const-string v1, "ClickURL"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/e;->e:Ljava/lang/String;

    .line 176
    const-string v1, "Image"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "Display Ad"

    const-string v2, "decoding..."

    invoke-static {v1, v2}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/tapjoy/e;->a([BII)V

    .line 189
    const-string v0, "Display Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/e;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "Display Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/e;->j:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/tapjoy/e;->j:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/tapjoy/e;->k:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/e;->f:Landroid/graphics/Bitmap;

    .line 198
    const-string v0, "Display Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/tapjoy/e;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/e;->g:Landroid/view/View;

    .line 204
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/tapjoy/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 205
    iget-object v1, p0, Lcom/tapjoy/e;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v0, p0, Lcom/tapjoy/e;->g:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/tapjoy/e;->f:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Lcom/tapjoy/e;->g:Landroid/view/View;

    new-instance v1, Lcom/tapjoy/k;

    invoke-direct {v1, p0}, Lcom/tapjoy/k;-><init>(Lcom/tapjoy/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget-object v0, Lcom/tapjoy/e;->a:Lcom/tapjoy/m;

    iget-object v1, p0, Lcom/tapjoy/e;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/tapjoy/m;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "Display Ad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing XML: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0
.end method

.method static synthetic b()Lcom/tapjoy/m;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tapjoy/e;->a:Lcom/tapjoy/m;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tapjoy/e;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/m;)V
    .locals 2

    .prologue
    .line 82
    sput-object p1, Lcom/tapjoy/e;->a:Lcom/tapjoy/m;

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/l;

    invoke-direct {v1, p0}, Lcom/tapjoy/l;-><init>(Lcom/tapjoy/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method
