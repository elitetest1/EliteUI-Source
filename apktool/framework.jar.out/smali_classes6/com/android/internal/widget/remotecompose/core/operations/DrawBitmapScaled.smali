.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapScaled.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmapScaled"

.field private static final blacklist OP_CODE:I = 0x95

.field public static final blacklist SCALE_CROP:I = 0x5

.field public static final blacklist SCALE_FILL_BOUNDS:I = 0x6

.field public static final blacklist SCALE_FILL_HEIGHT:I = 0x3

.field public static final blacklist SCALE_FILL_WIDTH:I = 0x2

.field public static final blacklist SCALE_FIT:I = 0x4

.field public static final blacklist SCALE_FIXED_SCALE:I = 0x7

.field public static final blacklist SCALE_INSIDE:I = 0x1

.field public static final blacklist SCALE_NONE:I


# instance fields
.field blacklist mContentDescId:I

.field blacklist mDstBottom:F

.field blacklist mDstLeft:F

.field blacklist mDstRight:F

.field blacklist mDstTop:F

.field blacklist mImageId:I

.field blacklist mMode:I

.field blacklist mOutDstBottom:F

.field blacklist mOutDstLeft:F

.field blacklist mOutDstRight:F

.field blacklist mOutDstTop:F

.field blacklist mOutScaleFactor:F

.field blacklist mOutSrcBottom:F

.field blacklist mOutSrcLeft:F

.field blacklist mOutSrcRight:F

.field blacklist mOutSrcTop:F

.field blacklist mScaleFactor:F

.field blacklist mScaleType:I

.field blacklist mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

.field blacklist mSrcBottom:F

.field blacklist mSrcLeft:F

.field blacklist mSrcRight:F

.field blacklist mSrcTop:F


# direct methods
.method public constructor blacklist <init>(IFFFFFFFFIFI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    and-int/lit16 p1, p10, 0xff

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    shr-int/lit8 p1, p10, 0x8

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mMode:I

    iput p11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iput p11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    iput p12, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V
    .locals 1

    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p12}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    const/16 v0, 0x95

    const-string v1, "DrawBitmapScaled"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Draw a bitmap using integer coordinates"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id of bitmap"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "srcLeft"

    const-string v1, "The left side of the image"

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "srcTop"

    const-string v1, "The top of the image"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "srcRight"

    const-string v1, "The right side of the image"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "srcBottom"

    const-string v1, "The bottom of the output"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "dstLeft"

    const-string v1, "The left side of the output"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "dstTop"

    const-string v1, "The top of the output"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "dstRight"

    const-string v1, "The right side of the output"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "type of auto scaling"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "scaleFactor"

    const-string v1, "for allowed"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "cdId"

    const-string v1, "id of string"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method private blacklist getScaleTypeString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "INVALID_SCALE_TYPE"

    return-object p0

    :pswitch_0
    const-string p0, "SCALE_FIXED_SCALE"

    return-object p0

    :pswitch_1
    const-string p0, "SCALE_FILL_BOUNDS"

    return-object p0

    :pswitch_2
    const-string p0, "SCALE_CROP"

    return-object p0

    :pswitch_3
    const-string p0, "SCALE_FIT"

    return-object p0

    :pswitch_4
    const-string p0, "SCALE_FILL_HEIGHT"

    return-object p0

    :pswitch_5
    const-string p0, "SCALE_FILL_WIDTH"

    return-object p0

    :pswitch_6
    const-string p0, "SCALE_INSIDE"

    return-object p0

    :pswitch_7
    const-string p0, "SCALE_NONE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x95

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "DrawBitmapScaled"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 13
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

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;-><init>(IFFFFFFFFIFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    return-void
.end method

.method static blacklist str(F)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->setup(FFFFFFFFIF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    :cond_0
    move v2, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    float-to-int v3, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    float-to-int v4, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    float-to-int v5, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    float-to-int v7, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    float-to-int v8, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    float-to-int v9, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    float-to-int v10, v0

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    return-void
.end method

.method blacklist print(Ljava/lang/String;FFFF)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float/2addr p4, p2

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " x "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float/2addr p5, p3

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const-string v0, "DrawBitmapScaled"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "contentDescriptionId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "scaleType"

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->getScaleTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    const-string/jumbo v2, "scaleFactor"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    const-string/jumbo v2, "srcLeft"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    const-string/jumbo v2, "srcTop"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    const-string/jumbo v2, "srcRight"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    const-string/jumbo v2, "srcBottom"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    const-string v2, "dstLeft"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    const-string v2, "dstTop"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    const-string v2, "dstRight"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    const-string v1, "dstBottom"

    invoke-interface {p1, v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrawBitmapScaled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] - ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    invoke-static {v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    :goto_2
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    :goto_3
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    :goto_4
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    :goto_5
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_6

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    :goto_6
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_7

    :cond_7
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    :goto_7
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_8

    :cond_8
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    :goto_8
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 13

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    return-void
.end method
