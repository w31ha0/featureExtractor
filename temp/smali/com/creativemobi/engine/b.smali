.class public final Lcom/creativemobi/engine/b;
.super Ljava/lang/Object;
.source "TournamentResultView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# instance fields
.field public a:Ljava/lang/String;

.field b:Lcom/creativemobi/engine/bl;

.field public c:I

.field public d:I

.field private e:Landroid/graphics/Typeface;

.field private f:I

.field private g:Ljava/util/ArrayList;

.field private h:[I

.field private i:[F

.field private j:[F

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/b;->a:Ljava/lang/String;

    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/creativemobi/engine/b;->h:[I

    .line 25
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/creativemobi/engine/b;->i:[F

    .line 26
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/creativemobi/engine/b;->j:[F

    .line 27
    iput v1, p0, Lcom/creativemobi/engine/b;->k:I

    .line 28
    iput v1, p0, Lcom/creativemobi/engine/b;->l:I

    .line 29
    iput v1, p0, Lcom/creativemobi/engine/b;->m:I

    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x64
        0x4b
        0x32
        0x28
        0x1e
        0x14
        0xf
        0xa
        0x5
        0x0
        0x0
        0x0
    .end array-data

    .line 25
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3ee66666    # 0.45f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3e6147ae    # 0.22f
        0x3e19999a    # 0.15f
        0x3dcccccd    # 0.1f
        0x3da3d70a    # 0.08f
        0x3d4ccccd    # 0.05f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 26
    :array_2
    .array-data 4
        0x3f400000    # 0.75f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3e19999a    # 0.15f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static a(Lcom/creativemobi/engine/x;F)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->a()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    .line 249
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    .line 251
    goto :goto_0

    .line 253
    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 254
    return-void

    :cond_1
    move-object v0, v1

    .line 253
    goto :goto_1
.end method

.method private b(Lcom/creativemobi/engine/w;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/engine/b;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0, p1, p2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mercedes-Benz"

    const-string v2, "MB"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volkswagen"

    const-string v2, "VW"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alfa Romeo"

    const-string v2, "Alfa"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mitsubishi"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bugatti"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lamborghini"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 9

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    .line 123
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "STANDINGS"

    const/16 v2, 0x32

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "WINNINGS"

    const/16 v2, 0x221

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x23

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/creativemobi/engine/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/creativemobi/engine/n;

    iget v1, p2, Lcom/creativemobi/engine/n;->d:I

    const v2, 0x186a0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    mul-int/lit8 v2, v0, 0x19

    add-int/lit16 v2, v2, 0xa7

    iget-object v3, p2, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v4}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, -0x112555

    :goto_2
    new-instance v4, Lcom/creativemobi/engine/x;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/creativemobi/engine/n;->c:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-direct {v4, v5, v6, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x16

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v4, Lcom/creativemobi/engine/x;

    iget-object v5, p2, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    const/16 v6, 0x4b

    invoke-direct {v4, v5, v6, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x16

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    const/high16 v5, 0x43020000    # 130.0f

    invoke-static {v4, v5}, Lcom/creativemobi/engine/b;->a(Lcom/creativemobi/engine/x;F)V

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v4, Lcom/creativemobi/engine/x;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/creativemobi/engine/n;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xff

    invoke-direct {v4, v5, v6, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x12

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    if-eqz v1, :cond_2

    new-instance v4, Lcom/creativemobi/engine/x;

    const-string v5, ""

    const/16 v6, 0x109

    invoke-direct {v4, v5, v6, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    :goto_3
    const/16 v5, 0x12

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    const/high16 v5, 0x430c0000    # 140.0f

    invoke-static {v4, v5}, Lcom/creativemobi/engine/b;->a(Lcom/creativemobi/engine/x;F)V

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    if-eqz v1, :cond_3

    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v4, "timed out"

    const/16 v5, 0x1ec

    invoke-direct {v1, v4, v5, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    :goto_4
    const/16 v2, 0x16

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1
    const/4 v3, -0x1

    goto/16 :goto_2

    :cond_2
    new-instance v4, Lcom/creativemobi/engine/x;

    iget v5, p2, Lcom/creativemobi/engine/n;->e:I

    invoke-direct {p0, p1, v5}, Lcom/creativemobi/engine/b;->b(Lcom/creativemobi/engine/w;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x109

    invoke-direct {v4, v5, v6, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v4, "%.3fs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p2, Lcom/creativemobi/engine/n;->d:I

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1ec

    invoke-direct {v1, v4, v5, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "CASH"

    const/16 v2, 0x221

    const/16 v3, 0xa7

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ee

    const/16 v3, 0xa7

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "RESPECT"

    const/16 v2, 0x221

    const/16 v3, 0xc5

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const v2, -0x2676e5

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ee

    const/16 v3, 0xc5

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const v2, -0x2676e5

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "RANK"

    const/16 v2, 0x221

    const/16 v3, 0xe3

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const v2, -0x112555

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v0, p0, Lcom/creativemobi/engine/b;->f:I

    if-ltz v0, :cond_5

    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ee

    const/16 v3, 0xe3

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    :goto_5
    const/16 v1, 0x1c

    const v2, -0x112555

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 124
    return-void

    .line 123
    :cond_5
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ee

    const/16 v3, 0xe3

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    goto :goto_5
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 12

    .prologue
    .line 34
    iput-object p3, p0, Lcom/creativemobi/engine/b;->b:Lcom/creativemobi/engine/bl;

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/b;->e:Landroid/graphics/Typeface;

    .line 38
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 41
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 42
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 44
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 45
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 47
    const-string v0, "next"

    const-string v1, "graphics/next.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 48
    const-string v0, "next"

    const-string v1, "next"

    const/16 v2, 0x28a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x38

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 51
    const-string v0, "header"

    const-string v1, "graphics/race_result.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 52
    const-string v0, "header"

    const-string v1, "header"

    const/16 v2, 0x226

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 54
    iget-object v0, p0, Lcom/creativemobi/engine/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/creativemobi/engine/n;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/creativemobi/engine/n;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/creativemobi/engine/n;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/creativemobi/engine/n;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    array-length v2, p1

    const/4 v3, 0x0

    move v11, v3

    move v3, v0

    move v0, v11

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v4, p1, v0

    iput v3, v4, Lcom/creativemobi/engine/n;->c:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/creativemobi/engine/b;->g:Ljava/util/ArrayList;

    .line 56
    const/16 v0, 0x64

    .line 57
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x0

    .line 59
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/creativemobi/engine/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 60
    iget-object v4, p0, Lcom/creativemobi/engine/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/creativemobi/engine/n;

    iget-object v4, p1, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/creativemobi/engine/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/creativemobi/engine/n;

    iget v1, p1, Lcom/creativemobi/engine/n;->d:I

    const v2, 0x186a0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_3
    move v2, v3

    move v11, v0

    move v0, v1

    move v1, v11

    .line 67
    :goto_4
    iget v3, p0, Lcom/creativemobi/engine/b;->c:I

    .line 68
    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    .line 70
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->d()Ljava/util/ArrayList;

    move-result-object v3

    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/creativemobi/engine/cg;

    .line 74
    const/4 v5, 0x0

    iget v6, p1, Lcom/creativemobi/engine/cg;->a:I

    invoke-interface {p3, v5, v6}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    .line 75
    invoke-virtual {p1}, Lcom/creativemobi/engine/cg;->b()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/m;->a([I)V

    .line 76
    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->x()I

    move-result v5

    .line 77
    if-le v5, v4, :cond_2

    move v4, v5

    goto :goto_5

    .line 63
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 59
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    .line 82
    :cond_6
    iget v4, p0, Lcom/creativemobi/engine/b;->d:I

    invoke-static {v4}, Lcom/creativemobi/engine/ac;->a(I)I

    move-result v4

    neg-int v4, v4

    iput v4, p0, Lcom/creativemobi/engine/b;->f:I

    .line 84
    if-eqz v1, :cond_7

    if-eqz v0, :cond_9

    .line 85
    :cond_7
    iget v0, p0, Lcom/creativemobi/engine/b;->c:I

    iget v1, p0, Lcom/creativemobi/engine/b;->c:I

    invoke-interface {p3, v1}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v1

    iget v3, p0, Lcom/creativemobi/engine/b;->f:I

    sub-int/2addr v1, v3

    invoke-interface {p3, v0, v1}, Lcom/creativemobi/engine/bl;->e(II)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/b;->f:I

    .line 96
    :cond_8
    :goto_6
    if-nez v2, :cond_b

    .line 97
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;I)V

    .line 99
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/creativemobi/engine/be;

    .line 102
    iget-object v1, p1, Lcom/creativemobi/engine/be;->b:Ljava/lang/String;

    iget v2, p1, Lcom/creativemobi/engine/be;->f:I

    iget-object v3, p0, Lcom/creativemobi/engine/b;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/creativemobi/engine/bh;

    invoke-direct {v4, p0, v1, v2}, Lcom/creativemobi/engine/bh;-><init>(Lcom/creativemobi/engine/b;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 87
    :cond_9
    const/16 v0, 0x9

    if-ge v2, v0, :cond_8

    .line 88
    iget-object v0, p0, Lcom/creativemobi/engine/b;->j:[F

    aget v0, v0, v2

    const/4 v1, 0x0

    invoke-static {v1, v3}, Lcom/creativemobi/engine/ab;->b(II)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    const v1, 0x3efae148    # 0.49f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/b;->k:I

    .line 90
    iget-object v0, p0, Lcom/creativemobi/engine/b;->i:[F

    aget v0, v0, v2

    const/4 v1, 0x0

    invoke-static {v1, v3}, Lcom/creativemobi/engine/ab;->a(II)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/b;->l:I

    .line 91
    iget v0, p0, Lcom/creativemobi/engine/b;->l:I

    iget v1, p0, Lcom/creativemobi/engine/b;->k:I

    invoke-interface {p3, v0, v1}, Lcom/creativemobi/engine/bl;->d(II)V

    .line 92
    iget v0, p0, Lcom/creativemobi/engine/b;->f:I

    iget-object v1, p0, Lcom/creativemobi/engine/b;->h:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/b;->f:I

    .line 93
    iget v0, p0, Lcom/creativemobi/engine/b;->c:I

    iget v1, p0, Lcom/creativemobi/engine/b;->c:I

    invoke-interface {p3, v1}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v1

    iget-object v3, p0, Lcom/creativemobi/engine/b;->h:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    invoke-interface {p3, v0, v1}, Lcom/creativemobi/engine/bl;->e(II)V

    goto :goto_6

    .line 104
    :cond_a
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;)V

    .line 106
    :cond_b
    return-void

    :cond_c
    move v11, v2

    move v2, v0

    move v0, v11

    goto/16 :goto_4
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/creativemobi/engine/b;->b:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/bd;

    invoke-direct {v1}, Lcom/creativemobi/engine/bd;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 3

    .prologue
    .line 133
    const-string v0, "next"

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/creativemobi/engine/b;->b:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/bd;

    invoke-direct {v1}, Lcom/creativemobi/engine/bd;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 136
    :cond_0
    return-void
.end method
