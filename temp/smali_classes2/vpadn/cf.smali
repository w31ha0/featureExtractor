.class public Lvpadn/cf;
.super Landroid/widget/TextView;
.source "FuncButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/cf$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:F

.field protected d:Lvpadn/by;

.field protected e:Lvpadn/cs;

.field private f:Lvpadn/cf$a;


# direct methods
.method public constructor <init>(Lvpadn/cs;Ljava/lang/String;Lvpadn/by;)V
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/cf;->b:I

    .line 18
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lvpadn/cf;->c:F

    .line 31
    iput-object p3, p0, Lvpadn/cf;->d:Lvpadn/by;

    .line 32
    iput-object p1, p0, Lvpadn/cf;->e:Lvpadn/cs;

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cf;->a:Ljava/lang/String;

    .line 36
    :try_start_0
    iget-object v0, p0, Lvpadn/cf;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cf;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvpadn/cf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvpadn/cf;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget v0, p0, Lvpadn/cf;->c:F

    invoke-virtual {p0, v0}, Lvpadn/cf;->setTextSize(F)V

    .line 43
    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x56000000

    invoke-virtual {p0, v0, v1, v2, v3}, Lvpadn/cf;->setShadowLayer(FFFI)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvpadn/cf;->setVisibility(I)V

    .line 48
    new-instance v0, Lvpadn/cf$1;

    invoke-direct {v0, p0}, Lvpadn/cf$1;-><init>(Lvpadn/cf;)V

    invoke-virtual {p0, v0}, Lvpadn/cf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v0, "FuncButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URLDecoder.decode(body, UTF-8); throw Exception mButtonText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/cf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lvpadn/cf;)Lvpadn/cf$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lvpadn/cf;->f:Lvpadn/cf$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public setAfterPressButtonListener(Lvpadn/cf$a;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lvpadn/cf;->f:Lvpadn/cf$a;

    .line 70
    return-void
.end method

.method public setCommand(Lvpadn/by;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lvpadn/cf;->d:Lvpadn/by;

    .line 74
    return-void
.end method
