.class public Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ColorExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ARGB_MODE:B = 0x5t

.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ColorExpression"

.field public static final blacklist COLOR_COLOR_INTERPOLATE:B = 0x0t

.field public static final blacklist COLOR_ID_INTERPOLATE:B = 0x2t

.field public static final blacklist HSV_MODE:B = 0x4t

.field public static final blacklist IDARGB_MODE:B = 0x6t

.field public static final blacklist ID_COLOR_INTERPOLATE:B = 0x1t

.field public static final blacklist ID_ID_INTERPOLATE:B = 0x3t

.field private static final blacklist OP_CODE:I = 0x86


# instance fields
.field public blacklist mAlpha:I

.field private blacklist mArgbAlpha:F

.field private blacklist mArgbBlue:F

.field private blacklist mArgbGreen:F

.field private blacklist mArgbRed:F

.field public blacklist mColor1:I

.field public blacklist mColor2:I

.field public blacklist mHue:F

.field public blacklist mId:I

.field blacklist mMode:I

.field private blacklist mOutArgbAlpha:F

.field private blacklist mOutArgbBlue:F

.field private blacklist mOutArgbGreen:F

.field private blacklist mOutArgbRed:F

.field public blacklist mOutColor1:I

.field public blacklist mOutColor2:I

.field public blacklist mOutHue:F

.field public blacklist mOutSat:F

.field public blacklist mOutTween:F

.field public blacklist mOutValue:F

.field public blacklist mSat:F

.field public blacklist mTween:F

.field public blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(IBFFFF)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid mode "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(IBIFFF)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid mode "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(IFFF)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    return-void
.end method

.method public constructor blacklist <init>(IIIIF)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    and-int/lit16 p1, p2, 0xff

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    shr-int/lit8 p2, p2, 0x10

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    :cond_0
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V
    .locals 7

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    goto :goto_1

    :cond_1
    const/high16 v1, 0x44800000    # 1024.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    :goto_1
    shl-int/lit8 p2, p2, 0x10

    or-int v3, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .locals 0

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p5

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    return-void
.end method

.method private static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V
    .locals 1

    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    const/16 v0, 0x86

    const-string v1, "ColorExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "A Color defined by an expression"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "Id of the color"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "mode"

    const-string v1, "The use of the next 3 fields"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "COLOR_COLOR_INTERPOLATE"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "COLOR_ID_INTERPOLATE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "ID_COLOR_INTERPOLATE"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "ID_ID_INTERPOLATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "HSV"

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "color1"

    const-string v3, "32 bit ARGB color"

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "color2"

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "tween"

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x86

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 7
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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid mode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    shr-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    move v5, v4

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    move v3, v0

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    move v5, v4

    shr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v0, v2

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    move v3, v0

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    move v5, v4

    shr-int/lit8 v0, v0, 0x10

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    move v3, v0

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBIFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    move v5, v4

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    invoke-static {v2, v3, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->hsvToRgb(FFF)I

    move-result p0

    const v2, 0xffffff

    and-int/2addr p0, v2

    or-int/2addr p0, v1

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    return-void

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    invoke-static {v1, v2, v3, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->toARGB(FFFF)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_3

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    return-void

    :cond_3
    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    invoke-static {v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->interpolateColor(IIF)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    return-void

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    return-void

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_7
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_8
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_9
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 4

    const-string v0, "ColorExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const-string/jumbo v1, "mode"

    packed-switch v0, :pswitch_data_0

    const-string p0, "NONE"

    invoke-interface {p1, v1, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void

    :pswitch_0
    const-string v0, "ARGB"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    const-string v2, "a"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    const-string/jumbo v2, "r"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    const-string v2, "g"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    const-string v1, "b"

    invoke-interface {p1, v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void

    :pswitch_1
    const-string v0, "HSV"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    const-string v2, "hue"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    const-string/jumbo v2, "sat"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    const-string/jumbo v1, "val"

    invoke-interface {p1, v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void

    :pswitch_2
    const-string v0, "TWEEN"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    int-to-float v1, v1

    const-string/jumbo v2, "startColor"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    int-to-float v1, v1

    const-string v3, "endColor"

    invoke-interface {p1, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    invoke-interface {p1, v2, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    const-string v2, ")"

    const-string v3, "ColorExpression["

    const-string v4, ", "

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = hsv ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ColorExpression toString"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = rgb ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v5, "]"

    const-string v6, "["

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v7, 0x2

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = tween("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    :cond_7
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    :cond_8
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    :cond_9
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 9

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    const/4 v0, 0x5

    if-ne v2, v0, :cond_0

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid mode "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v0, p1

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    shl-int/lit8 v1, v1, 0x10

    or-int v2, p1, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    return-void

    :cond_2
    move-object v0, p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    return-void
.end method
