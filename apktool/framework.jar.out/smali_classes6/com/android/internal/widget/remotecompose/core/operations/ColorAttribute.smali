.class public Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ColorAttribute.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ColorAttribute"

.field public static final blacklist COLOR_ALPHA:S = 0x6s

.field public static final blacklist COLOR_BLUE:S = 0x5s

.field public static final blacklist COLOR_BRIGHTNESS:S = 0x2s

.field public static final blacklist COLOR_GREEN:S = 0x4s

.field public static final blacklist COLOR_HUE:S = 0x0s

.field public static final blacklist COLOR_RED:S = 0x3s

.field public static final blacklist COLOR_SATURATION:S = 0x1s

.field private static final blacklist OP_CODE:I = 0xb4


# instance fields
.field blacklist mBounds:[F

.field public blacklist mColorId:I

.field public blacklist mId:I

.field public blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mBounds:[F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V
    .locals 1

    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0xb4

    const-string v1, "ColorAttribute"

    const-string v2, "Color Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Calculate Information about a Color"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id to output"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "longId"

    const-string v1, "id of color"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "the type information to extract"

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method private blacklist getTypeString()Ljava/lang/String;
    .locals 0

    iget-short p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    and-int/lit16 p0, p0, 0xff

    packed-switch p0, :pswitch_data_0

    const-string p0, "INVALID_TIME_TYPE"

    return-object p0

    :pswitch_0
    const-string p0, "COLOR_ALPHA"

    return-object p0

    :pswitch_1
    const-string p0, "COLOR_BLUE"

    return-object p0

    :pswitch_2
    const-string p0, "COLOR_GREEN"

    return-object p0

    :pswitch_3
    const-string p0, "COLOR_RED"

    return-object p0

    :pswitch_4
    const-string p0, "COLOR_BRIGHTNESS"

    return-object p0

    :pswitch_5
    const-string p0, "COLOR_SATURATION"

    return-object p0

    :pswitch_6
    const-string p0, "COLOR_HUE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0xb4

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorAttribute"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result p0

    int-to-short p0, p0

    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;-><init>(IIS)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 3

    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    shr-int/lit8 v0, v1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_1
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    and-int/lit16 v0, v1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_2
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_3
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    shr-int/lit8 v0, v1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_4
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->getBrightness(I)F

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_5
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->getSaturation(I)F

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_6
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->getHue(I)F

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "ColorAttribute"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "timeId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->getTypeString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorAttribute["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mColorId:I

    iget-short p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->mType:S

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    return-void
.end method
