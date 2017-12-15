.class final Lcom/flurry/android/n;
.super Lcom/flurry/android/al;
.source "SourceFile"


# instance fields
.field a:J

.field b:J

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:Ljava/lang/Long;

.field g:[B

.field h:Lcom/flurry/android/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/flurry/android/al;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/android/al;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/flurry/android/n;->b(Ljava/io/DataInput;)V

    .line 28
    return-void
.end method

.method private b(Ljava/io/DataInput;)V
    .locals 2

    .prologue
    .line 67
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/n;->a:J

    .line 68
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/n;->b:J

    .line 69
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/n;->d:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/n;->c:Ljava/lang/String;

    .line 71
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/n;->e:J

    .line 72
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/n;->f:Ljava/lang/Long;

    .line 74
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 75
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/android/n;->g:[B

    .line 76
    iget-object v0, p0, Lcom/flurry/android/n;->g:[B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 77
    return-void
.end method


# virtual methods
.method final a(Ljava/io/DataInput;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/flurry/android/n;->b(Ljava/io/DataInput;)V

    .line 34
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/flurry/android/n;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
