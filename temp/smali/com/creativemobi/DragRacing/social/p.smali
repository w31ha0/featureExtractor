.class public final Lcom/creativemobi/DragRacing/social/p;
.super Ljava/lang/Throwable;
.source "FacebookError.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/DragRacing/social/p;->a:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/DragRacing/social/p;->a:I

    .line 39
    iput-object p2, p0, Lcom/creativemobi/DragRacing/social/p;->b:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/creativemobi/DragRacing/social/p;->a:I

    .line 41
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/creativemobi/DragRacing/social/p;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/p;->b:Ljava/lang/String;

    return-object v0
.end method
