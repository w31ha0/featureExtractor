.class public final La/a/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/a/i;

.field private static b:La/a/i;

.field private static c:La/a/i;

.field private static d:La/a/i;

.field private static e:La/a/i;

.field private static f:La/a/i;

.field private static g:La/a/i;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La/a/i;-><init>(I)V

    sput-object v0, La/a/i;->a:La/a/i;

    new-instance v0, La/a/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La/a/i;-><init>(I)V

    sput-object v0, La/a/i;->b:La/a/i;

    new-instance v0, La/a/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, La/a/i;-><init>(I)V

    sput-object v0, La/a/i;->c:La/a/i;

    new-instance v0, La/a/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, La/a/i;-><init>(I)V

    sput-object v0, La/a/i;->d:La/a/i;

    new-instance v0, La/a/i;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, La/a/i;-><init>(I)V

    sput-object v0, La/a/i;->e:La/a/i;

    new-instance v0, La/a/i;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, La/a/i;-><init>(I)V

    sput-object v0, La/a/i;->f:La/a/i;

    new-instance v0, La/a/i;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, La/a/i;-><init>(I)V

    sput-object v0, La/a/i;->g:La/a/i;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a/i;->h:I

    return-void
.end method

.method static synthetic a(La/a/i;)I
    .locals 1

    iget v0, p0, La/a/i;->h:I

    return v0
.end method
