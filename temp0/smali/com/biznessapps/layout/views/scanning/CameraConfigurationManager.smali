.class final Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final TEN_DESIRED_ZOOM:I = 0x1b


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private previewFormat:I

.field private previewFormatString:Ljava/lang/String;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private static findBestMotZoomValue(Ljava/lang/CharSequence;I)I
    .locals 13
    .param p0, "stringValues"    # Ljava/lang/CharSequence;
    .param p1, "tenDesiredZoom"    # I

    .prologue
    .line 154
    const/4 v5, 0x0

    .line 155
    .local v5, "tenBestValue":I
    sget-object v9, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 156
    .local v4, "stringValue":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 159
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 163
    .local v7, "value":D
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double/2addr v9, v7

    double-to-int v6, v9

    .line 164
    .local v6, "tenValue":I
    int-to-double v9, p1

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-int v11, p1, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    .line 165
    move v5, v6

    .line 155
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v6    # "tenValue":I
    .end local v7    # "value":D
    :catch_0
    move-exception v3

    .line 168
    .end local v4    # "stringValue":Ljava/lang/String;
    .end local p1    # "tenDesiredZoom":I
    :goto_1
    return p1

    .restart local p1    # "tenDesiredZoom":I
    :cond_1
    move p1, v5

    goto :goto_1
.end method

.method private static findBestPreviewSizeValue(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 16
    .param p0, "previewSizeValueString"    # Ljava/lang/CharSequence;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "bestX":I
    const/4 v3, 0x0

    .line 114
    .local v3, "bestY":I
    const v4, 0x7fffffff

    .line 115
    .local v4, "diff":I
    sget-object v13, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v12, v1, v6

    .line 117
    .local v12, "previewSize":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 118
    const/16 v13, 0x78

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 119
    .local v5, "dimPosition":I
    if-gez v5, :cond_1

    .line 120
    sget-object v13, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad preview-size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 127
    :cond_1
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v12, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 128
    .local v9, "newX":I
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 134
    .local v10, "newY":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    sub-int v13, v9, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->y:I

    sub-int v14, v10, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int v8, v13, v14

    .line 135
    .local v8, "newDiff":I
    if-nez v8, :cond_3

    .line 136
    move v2, v9

    .line 137
    move v3, v10

    .line 147
    .end local v5    # "dimPosition":I
    .end local v8    # "newDiff":I
    .end local v9    # "newX":I
    .end local v10    # "newY":I
    .end local v12    # "previewSize":Ljava/lang/String;
    :cond_2
    if-lez v2, :cond_4

    if-lez v3, :cond_4

    .line 148
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 150
    :goto_2
    return-object v13

    .line 129
    .restart local v5    # "dimPosition":I
    .restart local v12    # "previewSize":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 130
    .local v11, "nfe":Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad preview-size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    .end local v11    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v8    # "newDiff":I
    .restart local v9    # "newX":I
    .restart local v10    # "newY":I
    :cond_3
    if-ge v8, v4, :cond_0

    .line 140
    move v2, v9

    .line 141
    move v3, v10

    .line 142
    move v4, v8

    goto :goto_1

    .line 150
    .end local v5    # "dimPosition":I
    .end local v8    # "newDiff":I
    .end local v9    # "newX":I
    .end local v10    # "newY":I
    .end local v12    # "previewSize":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private static getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 88
    const-string v2, "preview-size-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "previewSizeValueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 91
    const-string v2, "preview-size-value"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "cameraResolution":Landroid/graphics/Point;
    if-eqz v1, :cond_1

    .line 97
    sget-object v2, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview-size-values parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v1, p1}, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->findBestPreviewSizeValue(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 101
    :cond_1
    if-nez v0, :cond_2

    .line 103
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    iget v2, p1, Landroid/graphics/Point;->x:I

    shr-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x3

    iget v3, p1, Landroid/graphics/Point;->y:I

    shr-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 108
    .restart local v0    # "cameraResolution":Landroid/graphics/Point;
    :cond_2
    return-object v0
.end method

.method private setFlash(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 177
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Behold II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/biznessapps/layout/views/scanning/CameraManager;->SDK_INT:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 178
    const-string v0, "flash-value"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 183
    :goto_0
    const-string v0, "flash-mode"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 180
    :cond_0
    const-string v0, "flash-value"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 17
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 188
    const-string v12, "zoom-supported"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, "zoomSupportedString":Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/16 v8, 0x1b

    .line 195
    .local v8, "tenDesiredZoom":I
    const-string v12, "max-zoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "maxZoomString":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 198
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v9, v12

    .line 199
    .local v9, "tenMaxZoom":I
    if-le v8, v9, :cond_2

    .line 200
    move v8, v9

    .line 207
    .end local v9    # "tenMaxZoom":I
    :cond_2
    :goto_1
    const-string v12, "taking-picture-zoom-max"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "takingPictureZoomMaxString":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 210
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 211
    .restart local v9    # "tenMaxZoom":I
    if-le v8, v9, :cond_3

    .line 212
    move v8, v9

    .line 219
    .end local v9    # "tenMaxZoom":I
    :cond_3
    :goto_2
    const-string v12, "mot-zoom-values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "motZoomValuesString":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 221
    invoke-static {v5, v8}, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->findBestMotZoomValue(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 224
    :cond_4
    const-string v12, "mot-zoom-step"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "motZoomStepString":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 227
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 228
    .local v2, "motZoomStep":D
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v2

    double-to-int v10, v12

    .line 229
    .local v10, "tenZoomStep":I
    const/4 v12, 0x1

    if-le v10, v12, :cond_5

    .line 230
    rem-int v12, v8, v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v8, v12

    .line 239
    .end local v2    # "motZoomStep":D
    .end local v10    # "tenZoomStep":I
    :cond_5
    :goto_3
    if-nez v1, :cond_6

    if-eqz v5, :cond_7

    .line 240
    :cond_6
    const-string v12, "zoom"

    int-to-double v13, v8

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_7
    if-eqz v7, :cond_0

    .line 246
    const-string v12, "taking-picture-zoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 202
    .end local v4    # "motZoomStepString":Ljava/lang/String;
    .end local v5    # "motZoomValuesString":Ljava/lang/String;
    .end local v7    # "takingPictureZoomMaxString":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 203
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    sget-object v12, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad max-zoom: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v7    # "takingPictureZoomMaxString":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 215
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    sget-object v12, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad taking-picture-zoom-max: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 232
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v4    # "motZoomStepString":Ljava/lang/String;
    .restart local v5    # "motZoomValuesString":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto :goto_3
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getPreviewFormat()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->previewFormat:I

    return v0
.end method

.method getPreviewFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 43
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    iput v3, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->previewFormat:I

    .line 44
    const-string v3, "preview-format"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    .line 45
    sget-object v3, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default preview format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->previewFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v3, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 47
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 48
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 49
    sget-object v3, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen resolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v3, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 51
    sget-object v3, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera resolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 62
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting preview size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 64
    invoke-direct {p0, v0}, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/biznessapps/layout/views/scanning/CameraConfigurationManager;->setZoom(Landroid/hardware/Camera$Parameters;)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 68
    return-void
.end method
