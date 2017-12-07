.class public final La/a/a/w;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a/a/w;->a:I

    iput-object p2, p0, La/a/a/w;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/a/a/w;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/w;->b:Ljava/lang/String;

    return-object v0
.end method
