.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# static fields
.field private static synthetic d:[I


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

.field private b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 813
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 814
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->c:Ljava/lang/String;

    .line 815
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 816
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 807
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->values()[Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->c:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->b:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/high16 v5, 0x10000000

    .line 821
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;

    .line 822
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 824
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 825
    const-string v2, "videoListener"

    invoke-virtual {v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 824
    check-cast v1, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 826
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    const-string v4, "ad"

    invoke-virtual {v2, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taiwanmobile/pt/adp/view/TWMAd;

    .line 828
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->a()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$e;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 869
    :goto_0
    return-void

    .line 834
    :pswitch_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->c:Ljava/lang/String;

    const-string v2, "I"

    const-string v3, "4"

    invoke-static {v0, v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 838
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.facebook.com/sharer/sharer.php?u="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    const-string v2, "fb"

    invoke-virtual {v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "facebookUrl : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 845
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 847
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->c:Ljava/lang/String;

    const-string v2, "F"

    const-string v3, "5"

    invoke-static {v0, v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :pswitch_2
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 852
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 855
    const-string v4, "targetUrl"

    invoke-virtual {v0, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 854
    check-cast v0, Ljava/lang/String;

    .line 856
    const-string v4, "TWMAdActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "targetUrl : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 859
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 860
    invoke-interface {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onPresentScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 866
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$f;->c:Ljava/lang/String;

    const-string v2, "C"

    const-string v3, "6"

    invoke-static {v0, v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
