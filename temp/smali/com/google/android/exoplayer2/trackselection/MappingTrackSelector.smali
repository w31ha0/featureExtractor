.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/trackselection/TrackSelector",
        "<",
        "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>(Landroid/os/Handler;)V

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 94
    return-void
.end method

.method private static findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 8
    .param p0, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 338
    array-length v0, p0

    .line 339
    .local v0, "bestRendererIndex":I
    const/4 v2, 0x0

    .line 340
    .local v2, "bestSupportLevel":I
    const/4 v4, 0x0

    .local v4, "rendererIndex":I
    :goto_0
    array-length v7, p0

    if-ge v4, v7, :cond_2

    .line 341
    aget-object v3, p0, v4

    .line 342
    .local v3, "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    const/4 v5, 0x0

    .local v5, "trackIndex":I
    :goto_1
    iget v7, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v7, :cond_1

    .line 343
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    .line 344
    .local v6, "trackSupportLevel":I
    if-le v6, v2, :cond_0

    .line 345
    move v0, v4

    .line 346
    move v2, v6

    .line 347
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    move v1, v0

    .line 354
    .end local v0    # "bestRendererIndex":I
    .end local v3    # "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    .end local v5    # "trackIndex":I
    .end local v6    # "trackSupportLevel":I
    .local v1, "bestRendererIndex":I
    :goto_2
    return v1

    .line 342
    .end local v1    # "bestRendererIndex":I
    .restart local v0    # "bestRendererIndex":I
    .restart local v3    # "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    .restart local v5    # "trackIndex":I
    .restart local v6    # "trackSupportLevel":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 340
    .end local v6    # "trackSupportLevel":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    .end local v5    # "trackIndex":I
    :cond_2
    move v1, v0

    .line 354
    .end local v0    # "bestRendererIndex":I
    .restart local v1    # "bestRendererIndex":I
    goto :goto_2
.end method

.method private static getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 369
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v2, [I

    .line 370
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 371
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 387
    array-length v2, p0

    new-array v1, v2, [I

    .line 388
    .local v1, "mixedMimeTypeAdaptationSupport":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 389
    aget-object v2, p0, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v1, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final clearSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 186
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides(I)V
    .locals 2
    .param p1, "rendererIndex"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 204
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1
    .param p1, "rendererIndex"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public final getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 175
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 163
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelections;
    .locals 23
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/RendererCapabilities;",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ")",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelections",
            "<",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 233
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 234
    .local v17, "rendererTrackGroupCounts":[I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v18, v0

    .line 235
    .local v18, "rendererTrackGroups":[[Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v6, v0, [[[I

    .line 236
    .local v6, "rendererFormatSupports":[[[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    .line 237
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v21, v0

    aput-object v21, v18, v10

    .line 238
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    aput-object v21, v6, v10

    .line 236
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I

    move-result-object v5

    .line 246
    .local v5, "mixedMimeTypeAdaptationSupport":[I
    const/4 v9, 0x0

    .local v9, "groupIndex":I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_2

    .line 247
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 249
    .local v8, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v14

    .line 251
    .local v14, "rendererIndex":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v14, v0, :cond_1

    iget v0, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v13, v0, [I

    .line 254
    .local v13, "rendererFormatSupport":[I
    :goto_2
    aget v16, v17, v14

    .line 255
    .local v16, "rendererTrackGroupCount":I
    aget-object v21, v18, v14

    aput-object v8, v21, v16

    .line 256
    aget-object v21, v6, v14

    aput-object v13, v21, v16

    .line 257
    aget v21, v17, v14

    add-int/lit8 v21, v21, 0x1

    aput v21, v17, v14

    .line 246
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 251
    .end local v13    # "rendererFormatSupport":[I
    .end local v16    # "rendererTrackGroupCount":I
    :cond_1
    aget-object v21, p1, v14

    .line 252
    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I

    move-result-object v13

    goto :goto_2

    .line 261
    .end local v8    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v14    # "rendererIndex":I
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v4, v0, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 262
    .local v4, "rendererTrackGroupArrays":[Lcom/google/android/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v3, v0, [I

    .line 263
    .local v3, "rendererTrackTypes":[I
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_3

    .line 264
    aget v16, v17, v10

    .line 265
    .restart local v16    # "rendererTrackGroupCount":I
    new-instance v22, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v21, v18, v10

    .line 266
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v22, v4, v10

    .line 267
    aget-object v21, v6, v10

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[I

    aput-object v21, v6, v10

    .line 268
    aget-object v21, p1, v10

    invoke-interface/range {v21 .. v21}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v21

    aput v21, v3, v10

    .line 263
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 272
    .end local v16    # "rendererTrackGroupCount":I
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    aget v20, v17, v21

    .line 273
    .local v20, "unassociatedTrackGroupCount":I
    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    aget-object v21, v18, v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 276
    .local v7, "unassociatedTrackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v19

    .line 280
    .local v19, "trackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_7

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 282
    const/16 v21, 0x0

    aput-object v21, v19, v10

    .line 280
    :cond_4
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 284
    :cond_5
    aget-object v15, v4, v10

    .line 285
    .local v15, "rendererTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 286
    .local v12, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-nez v12, :cond_6

    const/4 v11, 0x0

    .line 287
    .local v11, "override":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    :goto_6
    if-eqz v11, :cond_4

    .line 288
    invoke-virtual {v11, v15}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v21

    aput-object v21, v19, v10

    goto :goto_5

    .line 286
    .end local v11    # "override":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    :cond_6
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    move-object/from16 v11, v21

    goto :goto_6

    .line 294
    .end local v12    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    .end local v15    # "rendererTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 297
    .local v2, "mappedTrackInfo":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    new-instance v21, Lcom/google/android/exoplayer2/trackselection/TrackSelections;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelections;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    return-object v21
.end method

.method protected abstract selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "override"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 142
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .restart local v0    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method
