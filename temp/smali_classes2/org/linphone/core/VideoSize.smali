.class public final Lorg/linphone/core/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"


# static fields
.field public static final CIF:I = 0x1

.field public static final HVGA:I = 0x2

.field public static final QCIF:I = 0x0

.field public static final QVGA:I = 0x3

.field public static final VIDEO_SIZE_1020P:Lorg/linphone/core/VideoSize;

.field public static final VIDEO_SIZE_720P:Lorg/linphone/core/VideoSize;

.field public static final VIDEO_SIZE_CIF:Lorg/linphone/core/VideoSize;

.field public static final VIDEO_SIZE_HVGA:Lorg/linphone/core/VideoSize;

.field public static final VIDEO_SIZE_QCIF:Lorg/linphone/core/VideoSize;

.field public static final VIDEO_SIZE_QVGA:Lorg/linphone/core/VideoSize;

.field public static final VIDEO_SIZE_VGA:Lorg/linphone/core/VideoSize;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x140

    .line 29
    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/VideoSize;-><init>(II)V

    sput-object v0, Lorg/linphone/core/VideoSize;->VIDEO_SIZE_QCIF:Lorg/linphone/core/VideoSize;

    .line 30
    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0x160

    const/16 v2, 0x120

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/VideoSize;-><init>(II)V

    sput-object v0, Lorg/linphone/core/VideoSize;->VIDEO_SIZE_CIF:Lorg/linphone/core/VideoSize;

    .line 31
    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0xf0

    invoke-direct {v0, v3, v1}, Lorg/linphone/core/VideoSize;-><init>(II)V

    sput-object v0, Lorg/linphone/core/VideoSize;->VIDEO_SIZE_QVGA:Lorg/linphone/core/VideoSize;

    .line 32
    new-instance v0, Lorg/linphone/core/VideoSize;

    invoke-direct {v0, v3, v4}, Lorg/linphone/core/VideoSize;-><init>(II)V

    sput-object v0, Lorg/linphone/core/VideoSize;->VIDEO_SIZE_HVGA:Lorg/linphone/core/VideoSize;

    .line 33
    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0x280

    invoke-direct {v0, v1, v4}, Lorg/linphone/core/VideoSize;-><init>(II)V

    sput-object v0, Lorg/linphone/core/VideoSize;->VIDEO_SIZE_VGA:Lorg/linphone/core/VideoSize;

    .line 34
    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/VideoSize;-><init>(II)V

    sput-object v0, Lorg/linphone/core/VideoSize;->VIDEO_SIZE_720P:Lorg/linphone/core/VideoSize;

    .line 35
    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/VideoSize;-><init>(II)V

    sput-object v0, Lorg/linphone/core/VideoSize;->VIDEO_SIZE_1020P:Lorg/linphone/core/VideoSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/linphone/core/VideoSize;->width:I

    .line 43
    iput p2, p0, Lorg/linphone/core/VideoSize;->height:I

    .line 44
    return-void
.end method

.method public static final createStandard(IZ)Lorg/linphone/core/VideoSize;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v5, 0x120

    const/16 v4, 0xf0

    const/16 v3, 0xb0

    const/16 v1, 0x90

    const/16 v2, 0x140

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 58
    new-instance v0, Lorg/linphone/core/VideoSize;

    invoke-direct {v0}, Lorg/linphone/core/VideoSize;-><init>()V

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    if-eqz p1, :cond_0

    new-instance v0, Lorg/linphone/core/VideoSize;

    invoke-direct {v0, v1, v3}, Lorg/linphone/core/VideoSize;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/linphone/core/VideoSize;

    invoke-direct {v0, v3, v1}, Lorg/linphone/core/VideoSize;-><init>(II)V

    goto :goto_0

    .line 52
    :pswitch_1
    if-eqz p1, :cond_1

    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0x160

    invoke-direct {v0, v5, v1}, Lorg/linphone/core/VideoSize;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0x160

    invoke-direct {v0, v1, v5}, Lorg/linphone/core/VideoSize;-><init>(II)V

    goto :goto_0

    .line 54
    :pswitch_2
    if-eqz p1, :cond_2

    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0x1e0

    invoke-direct {v0, v2, v1}, Lorg/linphone/core/VideoSize;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/linphone/core/VideoSize;

    const/16 v1, 0x1e0

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/VideoSize;-><init>(II)V

    goto :goto_0

    .line 56
    :pswitch_3
    if-eqz p1, :cond_3

    new-instance v0, Lorg/linphone/core/VideoSize;

    invoke-direct {v0, v4, v2}, Lorg/linphone/core/VideoSize;-><init>(II)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/linphone/core/VideoSize;

    invoke-direct {v0, v2, v4}, Lorg/linphone/core/VideoSize;-><init>(II)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public createInverted()Lorg/linphone/core/VideoSize;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lorg/linphone/core/VideoSize;

    iget v1, p0, Lorg/linphone/core/VideoSize;->height:I

    iget v2, p0, Lorg/linphone/core/VideoSize;->width:I

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/VideoSize;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    check-cast p1, Lorg/linphone/core/VideoSize;

    .line 82
    iget v2, p0, Lorg/linphone/core/VideoSize;->height:I

    iget v3, p1, Lorg/linphone/core/VideoSize;->height:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget v2, p0, Lorg/linphone/core/VideoSize;->width:I

    iget v3, p1, Lorg/linphone/core/VideoSize;->width:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 68
    .line 70
    iget v0, p0, Lorg/linphone/core/VideoSize;->height:I

    add-int/lit8 v0, v0, 0x1f

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/linphone/core/VideoSize;->width:I

    add-int/2addr v0, v1

    .line 72
    return v0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lorg/linphone/core/VideoSize;->height:I

    iget v1, p0, Lorg/linphone/core/VideoSize;->width:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/linphone/core/VideoSize;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/linphone/core/VideoSize;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDisplayableString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/linphone/core/VideoSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/linphone/core/VideoSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/linphone/core/VideoSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/linphone/core/VideoSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
