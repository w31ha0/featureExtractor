.class public final La/a/w;
.super La/a/o;


# instance fields
.field private transient a:[La/a/ac;

.field private transient b:[La/a/ac;

.field private transient c:[La/a/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/o;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, La/a/o;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;[La/a/ac;[La/a/ac;[La/a/ac;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-object p3, p0, La/a/w;->b:[La/a/ac;

    iput-object p4, p0, La/a/w;->c:[La/a/ac;

    iput-object p5, p0, La/a/w;->a:[La/a/ac;

    return-void
.end method


# virtual methods
.method public final a()[La/a/ac;
    .locals 1

    iget-object v0, p0, La/a/w;->b:[La/a/ac;

    return-object v0
.end method

.method public final b()[La/a/ac;
    .locals 1

    iget-object v0, p0, La/a/w;->c:[La/a/ac;

    return-object v0
.end method

.method public final c()[La/a/ac;
    .locals 1

    iget-object v0, p0, La/a/w;->a:[La/a/ac;

    return-object v0
.end method
