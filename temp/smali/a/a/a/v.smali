.class public final La/a/a/v;
.super La/a/a/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/a/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/v;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, La/a/a/v;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/v;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, La/a/a/v;->b:I

    iput-object p2, p0, La/a/a/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/v;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, La/a/a/v;->b:I

    iput-object p2, p0, La/a/a/v;->a:Ljava/lang/String;

    iput p3, p0, La/a/a/v;->b:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, La/a/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/a/a/v;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " in string ``"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, La/a/a/v;->b:I

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " at position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/v;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
