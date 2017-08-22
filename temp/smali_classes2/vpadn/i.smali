.class public Lvpadn/i;
.super Ljava/lang/Object;
.source "ExifHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/media/ExifInterface;

.field private u:Landroid/media/ExifInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lvpadn/i;->a:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lvpadn/i;->b:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lvpadn/i;->c:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lvpadn/i;->d:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lvpadn/i;->e:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lvpadn/i;->f:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lvpadn/i;->g:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lvpadn/i;->h:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lvpadn/i;->i:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lvpadn/i;->j:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lvpadn/i;->k:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lvpadn/i;->l:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lvpadn/i;->m:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lvpadn/i;->n:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lvpadn/i;->o:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lvpadn/i;->p:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lvpadn/i;->q:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lvpadn/i;->r:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lvpadn/i;->s:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    .line 47
    iput-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "FNumber"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->a:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->b:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "ExposureTime"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->c:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "Flash"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->d:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "FocalLength"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->e:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSAltitude"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->f:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSAltitudeRef"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->g:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSDateStamp"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->h:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSLatitude"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->i:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSLatitudeRef"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->j:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSLongitude"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->k:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSLongitudeRef"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->l:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSProcessingMethod"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->m:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "GPSTimeStamp"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->n:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "ISOSpeedRatings"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->o:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "Make"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->p:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "Model"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->q:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "Orientation"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->r:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    const-string v1, "WhiteBalance"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/i;->s:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lvpadn/i;->t:Landroid/media/ExifInterface;

    .line 57
    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lvpadn/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "FNumber"

    iget-object v2, p0, Lvpadn/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lvpadn/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "DateTime"

    iget-object v2, p0, Lvpadn/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_2
    iget-object v0, p0, Lvpadn/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "ExposureTime"

    iget-object v2, p0, Lvpadn/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_3
    iget-object v0, p0, Lvpadn/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "Flash"

    iget-object v2, p0, Lvpadn/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_4
    iget-object v0, p0, Lvpadn/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "FocalLength"

    iget-object v2, p0, Lvpadn/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_5
    iget-object v0, p0, Lvpadn/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSAltitude"

    iget-object v2, p0, Lvpadn/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_6
    iget-object v0, p0, Lvpadn/i;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 124
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSAltitudeRef"

    iget-object v2, p0, Lvpadn/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_7
    iget-object v0, p0, Lvpadn/i;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 127
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSDateStamp"

    iget-object v2, p0, Lvpadn/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_8
    iget-object v0, p0, Lvpadn/i;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSLatitude"

    iget-object v2, p0, Lvpadn/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_9
    iget-object v0, p0, Lvpadn/i;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 133
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSLatitudeRef"

    iget-object v2, p0, Lvpadn/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_a
    iget-object v0, p0, Lvpadn/i;->k:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 136
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSLongitude"

    iget-object v2, p0, Lvpadn/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_b
    iget-object v0, p0, Lvpadn/i;->l:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 139
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSLongitudeRef"

    iget-object v2, p0, Lvpadn/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_c
    iget-object v0, p0, Lvpadn/i;->m:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 142
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSProcessingMethod"

    iget-object v2, p0, Lvpadn/i;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_d
    iget-object v0, p0, Lvpadn/i;->n:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 145
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "GPSTimeStamp"

    iget-object v2, p0, Lvpadn/i;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_e
    iget-object v0, p0, Lvpadn/i;->o:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 148
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "ISOSpeedRatings"

    iget-object v2, p0, Lvpadn/i;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_f
    iget-object v0, p0, Lvpadn/i;->p:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 151
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "Make"

    iget-object v2, p0, Lvpadn/i;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_10
    iget-object v0, p0, Lvpadn/i;->q:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 154
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "Model"

    iget-object v2, p0, Lvpadn/i;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_11
    iget-object v0, p0, Lvpadn/i;->r:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 157
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "Orientation"

    iget-object v2, p0, Lvpadn/i;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_12
    iget-object v0, p0, Lvpadn/i;->s:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 160
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    const-string v1, "WhiteBalance"

    iget-object v2, p0, Lvpadn/i;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_13
    iget-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lvpadn/i;->u:Landroid/media/ExifInterface;

    .line 67
    return-void
.end method

.method public c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lvpadn/i;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 172
    const/16 v0, 0x5a

    goto :goto_0

    .line 173
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 174
    const/16 v0, 0xb4

    goto :goto_0

    .line 175
    :cond_3
    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 176
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 183
    const-string v0, "1"

    iput-object v0, p0, Lvpadn/i;->r:Ljava/lang/String;

    .line 184
    return-void
.end method
