.class final Lcom/creativemobi/engine/e;
.super Ljava/lang/Object;
.source "GarageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/creativemobi/engine/ad;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/ad;I)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/creativemobi/engine/e;->b:Lcom/creativemobi/engine/ad;

    iput p2, p0, Lcom/creativemobi/engine/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/creativemobi/engine/e;->b:Lcom/creativemobi/engine/ad;

    iget-object v0, v0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Your car is back at level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/e;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 312
    return-void
.end method
