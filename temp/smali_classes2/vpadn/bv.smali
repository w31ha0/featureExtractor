.class public Lvpadn/bv;
.super Landroid/widget/ImageView;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/bv$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/graphics/drawable/Drawable;

.field protected b:Lvpadn/by;

.field protected c:Lvpadn/cs;

.field private d:Lvpadn/bv$a;


# direct methods
.method public constructor <init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lvpadn/bv;->a:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object p3, p0, Lvpadn/bv;->b:Lvpadn/by;

    .line 56
    iput-object p1, p0, Lvpadn/bv;->c:Lvpadn/cs;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvpadn/bv;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lvpadn/bv;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lvpadn/bv;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    new-instance v0, Lvpadn/bv$2;

    invoke-direct {v0, p0}, Lvpadn/bv$2;-><init>(Lvpadn/bv;)V

    invoke-virtual {p0, v0}, Lvpadn/bv;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lvpadn/cs;Lvpadn/by;)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lvpadn/bv;->b:Lvpadn/by;

    .line 33
    iput-object p1, p0, Lvpadn/bv;->c:Lvpadn/cs;

    .line 35
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lvpadn/bv;->setVisibility(I)V

    .line 36
    new-instance v0, Lvpadn/bv$1;

    invoke-direct {v0, p0}, Lvpadn/bv$1;-><init>(Lvpadn/bv;)V

    invoke-virtual {p0, v0}, Lvpadn/bv;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lvpadn/bv;)Lvpadn/bv$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lvpadn/bv;->d:Lvpadn/bv$a;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    const-string v0, "ActionButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot covert file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to inputStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lvpadn/bq;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 106
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 107
    return-object v1
.end method

.method public a()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setAfterPressButtonListener(Lvpadn/bv$a;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lvpadn/bv;->d:Lvpadn/bv$a;

    .line 83
    return-void
.end method

.method public setButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lvpadn/bv;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public setButtonIcon(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lvpadn/bv;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvpadn/bv;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public setCommand(Lvpadn/by;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lvpadn/bv;->b:Lvpadn/by;

    .line 87
    return-void
.end method
