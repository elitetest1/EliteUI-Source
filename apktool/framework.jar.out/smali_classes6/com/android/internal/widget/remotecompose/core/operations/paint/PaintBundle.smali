.class public Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;
.super Ljava/lang/Object;
.source "PaintBundle.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ALPHA:I = 0xc

.field public static final blacklist ANTI_ALIAS:I = 0xe

.field public static final blacklist BLEND_MODE:I = 0x12

.field public static final blacklist BLEND_MODE_CLEAR:I = 0x0

.field public static final blacklist BLEND_MODE_COLOR:I = 0x1b

.field public static final blacklist BLEND_MODE_COLOR_BURN:I = 0x13

.field public static final blacklist BLEND_MODE_COLOR_DODGE:I = 0x12

.field public static final blacklist BLEND_MODE_DARKEN:I = 0x10

.field public static final blacklist BLEND_MODE_DIFFERENCE:I = 0x16

.field public static final blacklist BLEND_MODE_DST:I = 0x2

.field public static final blacklist BLEND_MODE_DST_ATOP:I = 0xa

.field public static final blacklist BLEND_MODE_DST_IN:I = 0x6

.field public static final blacklist BLEND_MODE_DST_OUT:I = 0x8

.field public static final blacklist BLEND_MODE_DST_OVER:I = 0x4

.field public static final blacklist BLEND_MODE_EXCLUSION:I = 0x17

.field public static final blacklist BLEND_MODE_HARD_LIGHT:I = 0x14

.field public static final blacklist BLEND_MODE_HUE:I = 0x19

.field public static final blacklist BLEND_MODE_LIGHTEN:I = 0x11

.field public static final blacklist BLEND_MODE_LUMINOSITY:I = 0x1c

.field public static final blacklist BLEND_MODE_MODULATE:I = 0xd

.field public static final blacklist BLEND_MODE_MULTIPLY:I = 0x18

.field public static final blacklist BLEND_MODE_NULL:I = 0x1d

.field public static final blacklist BLEND_MODE_OVERLAY:I = 0xf

.field public static final blacklist BLEND_MODE_PLUS:I = 0xc

.field public static final blacklist BLEND_MODE_SATURATION:I = 0x1a

.field public static final blacklist BLEND_MODE_SCREEN:I = 0xe

.field public static final blacklist BLEND_MODE_SOFT_LIGHT:I = 0x15

.field public static final blacklist BLEND_MODE_SRC:I = 0x1

.field public static final blacklist BLEND_MODE_SRC_ATOP:I = 0x9

.field public static final blacklist BLEND_MODE_SRC_IN:I = 0x5

.field public static final blacklist BLEND_MODE_SRC_OUT:I = 0x7

.field public static final blacklist BLEND_MODE_SRC_OVER:I = 0x3

.field public static final blacklist BLEND_MODE_XOR:I = 0xb

.field public static final blacklist CLEAR_COLOR_FILTER:I = 0x15

.field public static final blacklist COLOR:I = 0x4

.field public static final blacklist COLOR_FILTER:I = 0xd

.field public static final blacklist COLOR_FILTER_ID:I = 0x14

.field public static final blacklist COLOR_ID:I = 0x13

.field public static final blacklist FILTER_BITMAP:I = 0x11

.field public static final blacklist FONT_BOLD:I = 0x1

.field public static final blacklist FONT_BOLD_ITALIC:I = 0x3

.field public static final blacklist FONT_ITALIC:I = 0x2

.field public static final blacklist FONT_NORMAL:I = 0x0

.field public static final blacklist FONT_TYPE_DEFAULT:I = 0x0

.field public static final blacklist FONT_TYPE_MONOSPACE:I = 0x3

.field public static final blacklist FONT_TYPE_SANS_SERIF:I = 0x1

.field public static final blacklist FONT_TYPE_SERIF:I = 0x2

.field public static final blacklist GRADIENT:I = 0xb

.field public static final blacklist IMAGE_FILTER_QUALITY:I = 0xa

.field public static final blacklist LINEAR_GRADIENT:I = 0x0

.field public static final blacklist PORTER_MODE_ADD:I = 0x1e

.field public static final blacklist RADIAL_GRADIENT:I = 0x1

.field public static final blacklist SHADER:I = 0x9

.field public static final blacklist STROKE_CAP:I = 0x7

.field public static final blacklist STROKE_JOIN:I = 0xf

.field public static final blacklist STROKE_MITER:I = 0x6

.field public static final blacklist STROKE_WIDTH:I = 0x5

.field public static final blacklist STYLE:I = 0x8

.field public static final blacklist STYLE_FILL:I = 0x0

.field public static final blacklist STYLE_FILL_AND_STROKE:I = 0x2

.field public static final blacklist STYLE_STROKE:I = 0x1

.field public static final blacklist SWEEP_GRADIENT:I = 0x2

.field public static final blacklist TEXT_SIZE:I = 0x1

.field public static final blacklist TYPEFACE:I = 0x10


# instance fields
.field blacklist mArray:[I

.field private blacklist mColorFilterSet:Z

.field private blacklist mLastShaderSet:I

.field blacklist mOutArray:[I

.field blacklist mPos:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    return-void
.end method

.method private static blacklist asFloatStr(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist blendModeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo p0, "null"

    return-object p0

    :pswitch_1
    const-string p0, "ADD"

    return-object p0

    :pswitch_2
    const-string p0, "LUMINOSITY"

    return-object p0

    :pswitch_3
    const-string p0, "COLOR"

    return-object p0

    :pswitch_4
    const-string p0, "SATURATION"

    return-object p0

    :pswitch_5
    const-string p0, "HUE"

    return-object p0

    :pswitch_6
    const-string p0, "MULTIPLY"

    return-object p0

    :pswitch_7
    const-string p0, "EXCLUSION"

    return-object p0

    :pswitch_8
    const-string p0, "DIFFERENCE"

    return-object p0

    :pswitch_9
    const-string p0, "SOFT_LIGHT"

    return-object p0

    :pswitch_a
    const-string p0, "HARD_LIGHT"

    return-object p0

    :pswitch_b
    const-string p0, "COLOR_BURN"

    return-object p0

    :pswitch_c
    const-string p0, "COLOR_DODGE"

    return-object p0

    :pswitch_d
    const-string p0, "LIGHTEN"

    return-object p0

    :pswitch_e
    const-string p0, "DARKEN"

    return-object p0

    :pswitch_f
    const-string p0, "OVERLAY"

    return-object p0

    :pswitch_10
    const-string p0, "SCREEN"

    return-object p0

    :pswitch_11
    const-string p0, "MODULATE"

    return-object p0

    :pswitch_12
    const-string p0, "PLUS"

    return-object p0

    :pswitch_13
    const-string p0, "XOR"

    return-object p0

    :pswitch_14
    const-string p0, "DST_ATOP"

    return-object p0

    :pswitch_15
    const-string p0, "SRC_ATOP"

    return-object p0

    :pswitch_16
    const-string p0, "DST_OUT"

    return-object p0

    :pswitch_17
    const-string p0, "SRC_OUT"

    return-object p0

    :pswitch_18
    const-string p0, "DST_IN"

    return-object p0

    :pswitch_19
    const-string p0, "SRC_IN"

    return-object p0

    :pswitch_1a
    const-string p0, "DST_OVER"

    return-object p0

    :pswitch_1b
    const-string p0, "SRC_OVER"

    return-object p0

    :pswitch_1c
    const-string p0, "DST"

    return-object p0

    :pswitch_1d
    const-string p0, "SRC"

    return-object p0

    :pswitch_1e
    const-string p0, "CLEAR"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist colorInt(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "000000000000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist colorInt([I)Ljava/lang/String;
    .locals 3

    const-string v0, "["

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p0, v1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 0

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result p0

    return p0
.end method

.method private blacklist fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private static blacklist getVariable(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const-string/jumbo v1, "type"

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "Variable"

    const-string v2, "id"

    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v0, "value"

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v2, "Value"

    filled-new-array {v1, v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method private blacklist registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    return-void
.end method

.method private static blacklist serializeGradient(I[IILjava/util/List;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)I"
        }
    .end annotation

    move-object/from16 v0, p3

    shr-int/lit8 v1, p0, 0x10

    add-int/lit8 v2, p2, 0x1

    aget v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v3, :cond_1

    new-array v6, v3, [Ljava/lang/String;

    move v7, v4

    :goto_0
    if-ge v7, v3, :cond_0

    add-int/lit8 v8, v2, 0x1

    aget v2, p1, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_0

    :cond_0
    move-object v9, v6

    goto :goto_1

    :cond_1
    move-object v9, v5

    :goto_1
    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    if-lez v2, :cond_2

    new-array v5, v2, [F

    :goto_2
    array-length v2, v9

    if-ge v4, v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v5, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    :goto_3
    return v3

    :cond_4
    add-int/lit8 v1, v3, 0x1

    aget v4, p1, v3

    add-int/2addr v3, v2

    aget v1, p1, v1

    if-nez v5, :cond_5

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_5
    move-object v11, v5

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    const-string v14, "centerY"

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v15

    const-string/jumbo v6, "type"

    const-string v7, "SweepGradient"

    const-string v8, "colors"

    const-string/jumbo v10, "stops"

    const-string v12, "centerX"

    filled-new-array/range {v6 .. v15}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_6
    add-int/lit8 v1, v3, 0x1

    aget v2, p1, v3

    add-int/lit8 v4, v3, 0x2

    aget v1, p1, v1

    add-int/lit8 v6, v3, 0x3

    aget v4, p1, v4

    add-int/lit8 v3, v3, 0x4

    aget v6, p1, v6

    if-nez v5, :cond_7

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_7
    move-object v11, v5

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v15

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v17

    const-string/jumbo v18, "tileMode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string/jumbo v6, "type"

    const-string v7, "RadialGradient"

    const-string v8, "colors"

    const-string/jumbo v10, "stops"

    const-string v12, "centerX"

    const-string v14, "centerY"

    const-string/jumbo v16, "radius"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_8
    add-int/lit8 v1, v3, 0x1

    aget v2, p1, v3

    add-int/lit8 v4, v3, 0x2

    aget v1, p1, v1

    add-int/lit8 v6, v3, 0x3

    aget v4, p1, v4

    add-int/lit8 v7, v3, 0x4

    aget v6, p1, v6

    add-int/lit8 v3, v3, 0x5

    aget v7, p1, v7

    if-nez v5, :cond_9

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_9
    move-object v11, v5

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v15

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v17

    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v19

    const-string/jumbo v20, "tileMode"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string/jumbo v6, "type"

    const-string v7, "LinearGradient"

    const-string v8, "colors"

    const-string/jumbo v10, "stops"

    const-string/jumbo v12, "startX"

    const-string/jumbo v14, "startY"

    const-string v16, "endX"

    const-string v18, "endY"

    filled-new-array/range {v6 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3
.end method


# virtual methods
.method public blacklist applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V
    .locals 6

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v2, v0, 0x1

    aget v3, v1, v0

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const-wide/16 v0, 0x2000

    invoke-interface {p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->clear(J)V

    goto/16 :goto_3

    :pswitch_2
    shr-int/lit8 v0, v3, 0x10

    invoke-interface {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setBlendMode(I)V

    goto/16 :goto_3

    :pswitch_3
    shr-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v5, p1

    :goto_1
    invoke-interface {p2, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setFilterBitmap(Z)V

    goto/16 :goto_3

    :pswitch_4
    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0x3ff

    shr-int/lit8 v3, v3, 0x1a

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move v5, p1

    :goto_2
    add-int/lit8 v0, v0, 0x2

    aget v1, v1, v2

    invoke-interface {p2, v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTypeFace(IIZ)V

    goto :goto_0

    :pswitch_5
    shr-int/lit8 v0, v3, 0x10

    invoke-interface {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeJoin(I)V

    goto :goto_3

    :pswitch_6
    add-int/lit8 v0, v0, 0x2

    aget v1, v1, v2

    shr-int/lit8 v2, v3, 0x10

    invoke-interface {p2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setColorFilter(II)V

    goto :goto_0

    :pswitch_7
    add-int/lit8 v0, v0, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setAlpha(F)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callSetGradient(I[IILcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)I

    move-result v0

    goto :goto_0

    :pswitch_9
    shr-int/lit8 v0, v3, 0x10

    invoke-interface {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setImageFilterQuality(I)V

    goto :goto_3

    :pswitch_a
    add-int/lit8 v0, v0, 0x2

    aget v1, v1, v2

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setShader(I)V

    goto :goto_0

    :pswitch_b
    shr-int/lit8 v0, v3, 0x10

    invoke-interface {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStyle(I)V

    goto :goto_3

    :pswitch_c
    shr-int/lit8 v0, v3, 0x10

    invoke-interface {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeCap(I)V

    goto :goto_3

    :pswitch_d
    add-int/lit8 v0, v0, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeMiter(F)V

    goto/16 :goto_0

    :pswitch_e
    add-int/lit8 v0, v0, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeWidth(F)V

    goto/16 :goto_0

    :pswitch_f
    add-int/lit8 v0, v0, 0x2

    aget v1, v1, v2

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setColor(I)V

    goto/16 :goto_0

    :pswitch_10
    add-int/lit8 v0, v0, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTextSize(F)V

    goto/16 :goto_0

    :goto_3
    move v0, v2

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_f
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method blacklist callPrintGradient(I[IILjava/lang/StringBuilder;)I
    .locals 17

    move-object/from16 v0, p4

    shr-int/lit8 v1, p1, 0x10

    add-int/lit8 v2, p3, 0x1

    aget v3, p2, p3

    const-string v4, "\n    "

    const-string v5, "      tileMode = "

    const-string v6, "],\n"

    const-string v7, "      stops = "

    const-string v8, "      colors = "

    const-string v9, ", "

    const-string v10, "["

    const/4 v11, 0x0

    const-string v12, ",\n"

    const/4 v13, 0x0

    if-eqz v1, :cond_8

    const-string v14, "      center = "

    const/4 v15, 0x1

    if-eq v1, v15, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const-string v1, "GRADIENT_??????!!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_0
    const-string v1, "    SweepGradient(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v3, :cond_1

    new-array v1, v3, [I

    move v5, v11

    :goto_0
    if-ge v5, v3, :cond_2

    add-int/lit8 v6, v2, 0x1

    aget v2, p2, v2

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_0

    :cond_1
    move-object v1, v13

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    if-lez v2, :cond_3

    new-array v13, v2, [Ljava/lang/String;

    :goto_1
    if-ge v11, v2, :cond_3

    add-int/lit8 v5, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v11

    add-int/lit8 v11, v11, 0x1

    move v3, v5

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    aget v5, p2, v3

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v3, v4

    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    :cond_4
    const-string v1, "    RadialGradient(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v3, :cond_5

    new-array v1, v3, [I

    move v15, v11

    :goto_2
    if-ge v15, v3, :cond_6

    add-int/lit8 v16, v2, 0x1

    aget v2, p2, v2

    aput v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    move-object v1, v13

    :cond_6
    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    if-lez v2, :cond_7

    new-array v13, v2, [Ljava/lang/String;

    :goto_3
    if-ge v11, v2, :cond_7

    add-int/lit8 v15, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v11

    add-int/lit8 v11, v11, 0x1

    move v3, v15

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    aget v7, p2, v3

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v3, 0x2

    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      radius ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x3

    aget v6, p2, v7

    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x4

    aget v1, p2, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    :cond_8
    const-string v1, "    LinearGradient(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v3, :cond_9

    new-array v1, v3, [I

    move v14, v11

    :goto_4
    if-ge v14, v3, :cond_a

    add-int/lit8 v15, v2, 0x1

    aget v2, p2, v2

    aput v2, v1, v14

    add-int/lit8 v14, v14, 0x1

    move v2, v15

    goto :goto_4

    :cond_9
    move-object v1, v13

    :cond_a
    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    if-lez v2, :cond_b

    new-array v13, v2, [Ljava/lang/String;

    :goto_5
    if-ge v11, v2, :cond_b

    add-int/lit8 v14, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v11

    add-int/lit8 v11, v11, 0x1

    move v3, v14

    goto :goto_5

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    aget v7, p2, v3

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v3, 0x2

    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v3, 0x4

    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x5

    aget v1, p2, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3
.end method

.method blacklist callRegisterGradient(I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)I
    .locals 7

    shr-int/lit8 p1, p1, 0x10

    add-int/lit8 v0, p3, 0x1

    aget p3, p2, p3

    and-int/lit16 v1, p3, 0xff

    const v2, 0xffff

    shr-int/lit8 p3, p3, 0x10

    and-int/2addr p3, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "error "

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :cond_0
    if-lez v1, :cond_2

    move p1, v2

    :goto_0
    if-ge p1, v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    aget v0, p2, v0

    shl-int v6, v3, p1

    and-int/2addr v6, p3

    if-eqz v6, :cond_1

    invoke-virtual {p4, v0, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move v0, v5

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v0, 0x1

    aget p3, p2, v0

    :goto_1
    if-ge v2, p3, :cond_3

    add-int/lit8 v0, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 v2, v2, 0x1

    move p1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p1, 0x1

    aget v0, p2, p1

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/2addr p1, v4

    aget p2, p2, p3

    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    return p1

    :cond_4
    if-lez v1, :cond_6

    move p1, v2

    :goto_2
    if-ge p1, v1, :cond_6

    add-int/lit8 v4, v0, 0x1

    aget v0, p2, v0

    shl-int v5, v3, p1

    and-int/2addr v5, p3

    if-eqz v5, :cond_5

    invoke-virtual {p4, v0, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    move v0, v4

    goto :goto_2

    :cond_6
    add-int/lit8 p1, v0, 0x1

    aget p3, p2, v0

    :goto_3
    if-ge v2, p3, :cond_7

    add-int/lit8 v0, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 v2, v2, 0x1

    move p1, v0

    goto :goto_3

    :cond_7
    add-int/lit8 p3, p1, 0x1

    aget v0, p2, p1

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 v0, p1, 0x2

    aget p3, p2, p3

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 p3, p1, 0x3

    aget v0, p2, v0

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 p1, p1, 0x4

    aget p0, p2, p3

    return p1

    :cond_8
    if-lez v1, :cond_a

    move p1, v2

    :goto_4
    if-ge p1, v1, :cond_a

    add-int/lit8 v4, v0, 0x1

    aget v0, p2, v0

    shl-int v5, v3, p1

    and-int/2addr v5, p3

    if-eqz v5, :cond_9

    invoke-virtual {p4, v0, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    move v0, v4

    goto :goto_4

    :cond_a
    add-int/lit8 p1, v0, 0x1

    aget p3, p2, v0

    if-lez p3, :cond_b

    :goto_5
    if-ge v2, p3, :cond_b

    add-int/lit8 v0, p1, 0x1

    aget p1, p2, p1

    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 v2, v2, 0x1

    move p1, v0

    goto :goto_5

    :cond_b
    add-int/lit8 p3, p1, 0x1

    aget v0, p2, p1

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 v0, p1, 0x2

    aget p3, p2, p3

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 p3, p1, 0x3

    aget v0, p2, v0

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 v0, p1, 0x4

    aget p3, p2, p3

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    add-int/lit8 p1, p1, 0x5

    aget p0, p2, v0

    return p1
.end method

.method blacklist callSetGradient(I[IILcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)I
    .locals 10

    shr-int/lit8 p0, p1, 0x10

    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p3, :cond_1

    new-array v2, p3, [I

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_0

    add-int/lit8 v4, p1, 0x1

    aget p1, p2, p1

    aput p1, v2, v3

    add-int/lit8 v3, v3, 0x1

    move p1, v4

    goto :goto_0

    :cond_0
    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    add-int/lit8 p3, p1, 0x1

    aget p1, p2, p1

    if-lez p1, :cond_2

    new-array v1, p1, [F

    :goto_2
    array-length p1, v3

    if-ge v0, p1, :cond_2

    add-int/lit8 p1, p3, 0x1

    aget p3, p2, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    aput p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    move p3, p1

    goto :goto_2

    :cond_2
    move-object v4, v1

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p0, :cond_6

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    :goto_3
    return p3

    :cond_4
    add-int/lit8 p0, p3, 0x1

    aget v0, p2, p3

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-int/2addr p3, p1

    aget p0, p2, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-interface {p4, v3, v4, v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setSweepGradient([I[FFF)V

    return p3

    :cond_5
    add-int/lit8 p0, p3, 0x1

    aget p1, p2, p3

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    add-int/lit8 p1, p3, 0x2

    aget p0, p2, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-int/lit8 p0, p3, 0x3

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    add-int/lit8 p3, p3, 0x4

    aget v8, p2, p0

    move-object v2, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setRadialGradient([I[FFFFI)V

    return p3

    :cond_6
    move-object v2, p4

    add-int/lit8 p0, p3, 0x1

    aget p1, p2, p3

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    add-int/lit8 p1, p3, 0x2

    aget p0, p2, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-int/lit8 p0, p3, 0x3

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    add-int/lit8 p1, p3, 0x4

    aget p0, p2, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    add-int/lit8 p3, p3, 0x5

    aget v9, p2, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setLinearGradient([I[FFFFFI)V

    return p3
.end method

.method public blacklist clear(J)V
    .locals 0

    return-void
.end method

.method public blacklist clearColorFilter()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x15

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    return-void
.end method

.method public blacklist readBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v1, 0x400

    if-gt v0, v1, :cond_1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "buffer corrupt paint len = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist registerVars(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v0, 0x1

    aget v3, v4, v0

    const v1, 0xffff

    and-int/2addr v1, v3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move v0, v5

    goto :goto_3

    :cond_0
    :pswitch_0
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    goto :goto_1

    :cond_1
    :pswitch_1
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    goto :goto_2

    :pswitch_2
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callRegisterGradient(I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)I

    move-result p0

    move v0, p0

    goto :goto_3

    :cond_2
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    add-int/lit8 v0, v0, 0x2

    aget p0, v4, v5

    invoke-virtual {v6, p0, v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    goto :goto_3

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :goto_2
    add-int/lit8 v0, v0, 0x2

    aget p0, v4, v5

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    invoke-virtual {v6, p0, v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_3
    :goto_3
    move-object p0, v2

    move-object p1, v6

    move-object p2, v7

    goto :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->clearColorFilter()V

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setShader(I)V

    :cond_1
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 12

    const-string v0, "PaintBundle"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v2

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    const-string/jumbo v8, "type"

    if-eq v6, v7, :cond_3

    const-string v9, "enabled"

    const-string v10, "id"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string v2, "ClearColorFilter"

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    shr-int/lit8 v3, v5, 0x10

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "type"

    const-string v7, "ColorFilterID"

    const-string v8, "id"

    const-string/jumbo v10, "mode"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ColorId"

    filled-new-array {v8, v4, v10, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    shr-int/lit8 v2, v5, 0x10

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlendMode"

    const-string/jumbo v5, "mode"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_4
    shr-int/lit8 v2, v5, 0x10

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "FilterBitmap"

    filled-new-array {v8, v3, v9, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_5
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x3ff

    int-to-float v6, v6

    shr-int/lit8 v5, v5, 0x1a

    if-lez v5, :cond_1

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_2
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    const-string v4, "fontFamily"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "FontFamily"

    filled-new-array {v8, v5, v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "weight"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "FontWeight"

    filled-new-array {v8, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "italic"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "TypeFace"

    filled-new-array {v8, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    shr-int/lit8 v2, v5, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "StrokeJoin"

    const-string/jumbo v5, "strokeJoin"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_7
    shr-int/lit8 v2, v5, 0x10

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "AntiAlias"

    filled-new-array {v8, v3, v9, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_8
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v9

    shr-int/lit8 v3, v5, 0x10

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "type"

    const-string v7, "ColorFilter"

    const-string v8, "color"

    const-string/jumbo v10, "mode"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "Alpha"

    const-string v5, "alpha"

    filled-new-array {v8, v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    invoke-static {v5, v3, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->serializeGradient(I[IILjava/util/List;)I

    move-result v2

    goto/16 :goto_0

    :pswitch_b
    shr-int/lit8 v2, v5, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ImageFilterQuality"

    const-string/jumbo v5, "quality"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_c
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Shader"

    filled-new-array {v8, v4, v10, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_d
    shr-int/lit8 v2, v5, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Style"

    const-string/jumbo v5, "style"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_e
    shr-int/lit8 v2, v5, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "StrokeCap"

    const-string v5, "cap"

    filled-new-array {v8, v3, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move v2, v4

    goto/16 :goto_0

    :pswitch_f
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "StrokeMiter"

    const-string/jumbo v5, "miter"

    filled-new-array {v8, v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_10
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "StrokeWidth"

    const-string/jumbo v5, "width"

    filled-new-array {v8, v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_11
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Color"

    const-string v5, "color"

    filled-new-array {v8, v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "TextSize"

    const-string/jumbo v5, "size"

    filled-new-array {v8, v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo p0, "operations"

    invoke-interface {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0xc

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0xe

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setBlendMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x12

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setColor(FFFF)V
    .locals 0

    invoke-static {p4, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->toARGB(FFFF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    return-void
.end method

.method public blacklist setColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x4

    aput v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setColor(IIII)V
    .locals 0

    shl-int/lit8 p4, p4, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p4

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    return-void
.end method

.method public blacklist setColorFilter(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    or-int/lit8 p2, p2, 0xd

    aput p2, v0, v1

    add-int/lit8 p2, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, p2

    return-void
.end method

.method public blacklist setColorFilterId(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    or-int/lit8 p2, p2, 0x14

    aput p2, v0, v1

    add-int/lit8 p2, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, p2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    return-void
.end method

.method public blacklist setColorId(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x13

    aput v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/lit8 p1, p1, 0x11

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setLinearGradient([II[FFFFFI)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v3, 0xb

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    array-length v1, p1

    or-int/2addr p2, v1

    aput p2, v0, v2

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p1, v0

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    array-length v1, p3

    :goto_1
    aput v1, p1, v0

    :goto_2
    if-ge p2, v1, :cond_2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v2, p3, p2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p8, p1, p2

    return-void
.end method

.method public blacklist setRadialGradient([II[FFFFI)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const v3, 0x1000b

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    array-length v3, p1

    :goto_0
    or-int/2addr p2, v3

    aput p2, v0, v2

    move p2, v1

    :goto_1
    if-ge p2, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p1, p2

    aput v4, v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    array-length v0, p3

    :goto_2
    aput v0, p1, p2

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p7, p1, p2

    return-void
.end method

.method public blacklist setShader(I)V
    .locals 3

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x9

    aput v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x7

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0xf

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x6

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x5

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x8

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setSweepGradient([II[FFF)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const v3, 0x2000b

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    array-length v3, p1

    :goto_0
    or-int/2addr p2, v3

    aput p2, v0, v2

    move p2, v1

    :goto_1
    if-ge p2, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p1, p2

    aput v4, v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    array-length v0, p3

    :goto_2
    aput v0, p1, p2

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    aput p0, p1, p2

    return-void
.end method

.method public blacklist setTextSize(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x1

    aput v2, v0, v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    aput p1, v0, v1

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setTextStyle(IIZ)V
    .locals 2

    and-int/lit16 p2, p2, 0x3ff

    if-eqz p3, :cond_0

    const/16 p3, 0x800

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    or-int/2addr p2, p3

    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 p2, p2, 0x10

    or-int/lit8 p2, p2, 0x10

    aput p2, p3, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, p3, v1

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v2

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v2, "    clearColorFilter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "    ColorFilterID(color=["

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v5, 0x10

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "    ColorId(["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    BlendMode("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v5, 0x10

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    FilterBitmap("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :pswitch_5
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x3ff

    shr-int/lit8 v5, v5, 0x1a

    if-lez v5, :cond_1

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_2
    add-int/lit8 v2, v2, 0x2

    aget v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    TypeFace("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    StrokeJoin("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v5, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    AntiAlias("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v5, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "    ColorFilter(color="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v6, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v5, 0x10

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "    Alpha("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v5, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {p0, v5, v3, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callPrintGradient(I[IILjava/lang/StringBuilder;)I

    move-result v2

    goto/16 :goto_4

    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    ImageFilterQuality("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v5, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "    Shader("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    Style("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v5, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    StrokeCap("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v5, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v2, v4

    goto :goto_4

    :pswitch_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "    StrokeMiter("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v5, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "    StrokeWidth("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v5, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "    Color("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v5, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "    TextSize("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v2, 0x2

    aget v4, v5, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v3, "),\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist updateFloatsInGradient(I[I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 7

    shr-int/lit8 p1, p1, 0x10

    add-int/lit8 v0, p4, 0x1

    aget p4, p3, p4

    and-int/lit16 v1, p4, 0xff

    const v2, 0xffff

    shr-int/lit8 p4, p4, 0x10

    and-int/2addr p4, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "gradient type unknown"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :cond_0
    if-lez v1, :cond_2

    move p1, v2

    :goto_0
    if-ge p1, v1, :cond_2

    aget v5, p3, v0

    shl-int v6, v3, p1

    and-int/2addr v6, p4

    if-eqz v6, :cond_1

    invoke-direct {p0, v5, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v5

    aput v5, p2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v0, 0x1

    aget p4, p3, v0

    if-lez p4, :cond_3

    new-array v0, p4, [F

    :goto_1
    if-ge v2, p4, :cond_3

    aget v0, p3, p1

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    add-int/lit8 p4, p1, 0x1

    aget p3, p3, p4

    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p0

    aput p0, p2, p4

    add-int/2addr p1, v4

    return p1

    :cond_4
    if-lez v1, :cond_6

    move p1, v2

    :goto_2
    if-ge p1, v1, :cond_6

    aget v4, p3, v0

    shl-int v5, v3, p1

    and-int/2addr v5, p4

    if-eqz v5, :cond_5

    invoke-direct {p0, v4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v4

    aput v4, p2, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 p1, v0, 0x1

    aget p4, p3, v0

    if-lez p4, :cond_7

    :goto_3
    if-ge v2, p4, :cond_7

    aget v0, p3, p1

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    add-int/lit8 p4, p1, 0x1

    aget v0, p3, p4

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p4

    add-int/lit8 p4, p1, 0x2

    aget p3, p3, p4

    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p0

    aput p0, p2, p4

    add-int/lit8 p1, p1, 0x4

    return p1

    :cond_8
    if-lez v1, :cond_a

    move p1, v2

    :goto_4
    if-ge p1, v1, :cond_a

    aget v4, p3, v0

    shl-int v5, v3, p1

    and-int/2addr v5, p4

    if-eqz v5, :cond_9

    invoke-direct {p0, v4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v4

    aput v4, p2, v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 p1, v0, 0x1

    aget p4, p3, v0

    if-lez p4, :cond_b

    :goto_5
    if-ge v2, p4, :cond_b

    aget v0, p3, p1

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    aget p4, p3, p1

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p4

    aput p4, p2, p1

    add-int/lit8 p4, p1, 0x1

    aget v0, p3, p4

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p4

    add-int/lit8 p4, p1, 0x2

    aget v0, p3, p4

    invoke-direct {p0, v0, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    aput v0, p2, p4

    add-int/lit8 p4, p1, 0x3

    aget p3, p3, p4

    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p0

    aput p0, p2, p4

    add-int/lit8 p1, p1, 0x5

    return p1
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v1, 0x1

    aget v3, v5, v1

    const v0, 0xffff

    and-int/2addr v0, v3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/16 v2, 0x13

    if-eq v0, v2, :cond_3

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    move-object v2, p0

    move-object v7, p1

    move v1, v6

    goto :goto_3

    :cond_1
    :pswitch_0
    move-object v2, p0

    move-object v7, p1

    goto :goto_2

    :cond_2
    :pswitch_1
    move-object v2, p0

    move-object v7, p1

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->updateFloatsInGradient(I[I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p0

    move v1, p0

    goto :goto_3

    :cond_3
    move-object v2, p0

    move-object v7, p1

    iget-object p0, v2, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    aget p1, v5, v6

    invoke-direct {v2, p1, v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p1

    aput p1, p0, v6

    goto :goto_2

    :goto_1
    iget-object p0, v2, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    aget p1, v5, v6

    invoke-direct {v2, p1, v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p1

    aput p1, p0, v6

    :goto_2
    add-int/lit8 v1, v1, 0x2

    :goto_3
    move-object p0, v2

    move-object p1, v7

    goto :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist writeBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
