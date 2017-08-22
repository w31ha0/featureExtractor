.class Lvpadn/ch$1;
.super Ljava/lang/Object;
.source "OpenWebCommandOneStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ch;->a(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Z

.field final synthetic j:Lvpadn/ch;


# direct methods
.method constructor <init>(Lvpadn/ch;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lvpadn/ch$1;->j:Lvpadn/ch;

    iput-object p2, p0, Lvpadn/ch$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lvpadn/ch$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lvpadn/ch$1;->c:Z

    iput-boolean p5, p0, Lvpadn/ch$1;->d:Z

    iput-object p6, p0, Lvpadn/ch$1;->e:Ljava/lang/String;

    iput p7, p0, Lvpadn/ch$1;->f:I

    iput-boolean p8, p0, Lvpadn/ch$1;->g:Z

    iput-boolean p9, p0, Lvpadn/ch$1;->h:Z

    iput-boolean p10, p0, Lvpadn/ch$1;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 161
    iget-object v0, p0, Lvpadn/ch$1;->j:Lvpadn/ch;

    invoke-static {v0}, Lvpadn/ch;->a(Lvpadn/ch;)Lvpadn/cs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    iget-object v1, p0, Lvpadn/ch$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lvpadn/ch$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lvpadn/ch$1;->c:Z

    iget-boolean v4, p0, Lvpadn/ch$1;->d:Z

    iget-object v5, p0, Lvpadn/ch$1;->e:Ljava/lang/String;

    iget v6, p0, Lvpadn/ch$1;->f:I

    iget-boolean v7, p0, Lvpadn/ch$1;->g:Z

    iget-boolean v8, p0, Lvpadn/ch$1;->h:Z

    iget-boolean v9, p0, Lvpadn/ch$1;->i:Z

    invoke-virtual/range {v0 .. v9}, Lcom/vpadn/widget/VpadnActivity;->videoActivityTo2PartActivity(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V

    .line 163
    return-void
.end method
