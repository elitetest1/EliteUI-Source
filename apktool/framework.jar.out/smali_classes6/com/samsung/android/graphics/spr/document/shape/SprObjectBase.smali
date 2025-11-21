.class public abstract Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.super Ljava/lang/Object;
.source "SprObjectBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SprObjectBase"

.field public static final blacklist TYPE_CIRCLE:B = 0x1t

.field public static final blacklist TYPE_ELLIPSE:B = 0x2t

.field public static final blacklist TYPE_GROUP:B = 0x10t

.field public static final blacklist TYPE_LINE:B = 0x3t

.field public static final blacklist TYPE_NONE:B = 0x0t

.field public static final blacklist TYPE_PATH:B = 0x4t

.field public static final blacklist TYPE_RECTANGLE:B = 0x5t

.field public static final blacklist TYPE_USE:B = 0x11t

.field private static final blacklist sCapArray:[Landroid/graphics/Paint$Cap;

.field private static final blacklist sJoinArray:[Landroid/graphics/Paint$Join;


# instance fields
.field public blacklist alpha:F

.field public blacklist fillPaint:Landroid/graphics/Paint;

.field public blacklist hasFillAnimation:Z

.field public blacklist hasStrokeAnimation:Z

.field public blacklist isVisibleFill:Z

.field public blacklist isVisibleStroke:Z

.field public blacklist mAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

.field public final blacklist mType:B

.field public blacklist shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

.field public blacklist strokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    new-array v0, v0, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    return-void
.end method

.method protected constructor blacklist <init>(B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    return-void
.end method

.method private blacklist applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eq v2, v5, :cond_a

    const/16 v5, 0x23

    if-eq v2, v5, :cond_6

    const/16 v4, 0x40

    if-eq v2, v4, :cond_0

    const/16 v4, 0x61

    if-eq v2, v4, :cond_0

    const/16 v4, 0x70

    if-eq v2, v4, :cond_5

    const/16 v4, 0x25

    if-eq v2, v4, :cond_4

    const/16 v4, 0x26

    if-eq v2, v4, :cond_3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attribute type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "is not supported type"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    iget-byte v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    sub-int/2addr v1, v3

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    iget-byte v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    sub-int/2addr v1, v3

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    :cond_5
    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    goto/16 :goto_0

    :cond_6
    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->colorType:B

    if-eqz v2, :cond_9

    if-eq v2, v3, :cond_8

    if-eq v2, v4, :cond_7

    if-eq v2, v8, :cond_7

    goto/16 :goto_0

    :cond_7
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0

    :cond_8
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_9
    iput-boolean v7, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    goto/16 :goto_0

    :cond_a
    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->colorType:B

    if-eqz v2, :cond_d

    if-eq v2, v3, :cond_c

    if-eq v2, v4, :cond_b

    if-eq v2, v8, :cond_b

    goto/16 :goto_0

    :cond_b
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0

    :cond_c
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_d
    iput-boolean v7, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private blacklist loadAttributeFromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v3

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    const/16 v5, 0x3030

    if-lt v4, v5, :cond_0

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v5, 0x3032

    if-lt v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v3, :cond_c

    const/4 v5, 0x1

    if-eq v3, v5, :cond_b

    const/4 v5, 0x3

    if-eq v3, v5, :cond_a

    const/16 v5, 0x20

    if-eq v3, v5, :cond_9

    const/16 v5, 0x23

    if-eq v3, v5, :cond_8

    const/16 v5, 0x40

    if-eq v3, v5, :cond_7

    const/16 v5, 0x61

    if-eq v3, v5, :cond_6

    const/16 v5, 0x70

    if-eq v3, v5, :cond_5

    const/16 v5, 0x25

    if-eq v3, v5, :cond_4

    const/16 v5, 0x26

    if-eq v3, v5, :cond_3

    const/16 v5, 0x28

    if-eq v3, v5, :cond_2

    const/16 v5, 0x29

    if-eq v3, v5, :cond_1

    sget-object v5, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown attribute id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v3, v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    goto/16 :goto_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;

    invoke-direct {v4, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private blacklist saveAttributeToSPR(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V
    .locals 8

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/16 v3, 0x20

    const/high16 v4, 0x437f0000    # 255.0f

    if-eq v2, v3, :cond_4

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    const/16 v3, 0x61

    if-eq v2, v3, :cond_0

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    const/16 v3, 0x26

    if-eq v2, v3, :cond_0

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    const/16 v3, 0x29

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attribute type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "is not supported type"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    mul-float/2addr v4, p3

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    mul-float/2addr v4, p3

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_6
    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    if-eq v2, v3, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    goto/16 :goto_0

    :cond_7
    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    move v3, v2

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    move v4, v3

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move v0, v4

    move v4, v1

    move v1, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto/16 :goto_0

    :cond_8
    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_0

    :cond_9
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v4, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    iget v5, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    iget v7, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-direct {v3, v4, v5, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_0

    :cond_a
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iget v4, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_0

    :cond_b
    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->left:F

    move v3, v2

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->top:F

    move v4, v3

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->right:F

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->bottom:F

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move v0, v4

    move v4, v1

    move v1, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method protected blacklist clearShadowLayer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    :cond_2
    iget p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput p0, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->loadAttributeFromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public blacklist getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object p0
.end method

.method public blacklist getSPRSize()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x4

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getTotalAttributeCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public abstract blacklist getTotalElementCount()I
.end method

.method public abstract blacklist getTotalSegmentCount()I
.end method

.method public blacklist preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 7

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .locals 0

    iput-boolean p4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iput-boolean p5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iput-object p6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    :goto_0
    move-object p2, p1

    iget-object p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_4

    if-eqz p3, :cond_3

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5
    :goto_1
    move-object p3, p1

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    :cond_6
    iput-object p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public blacklist removeAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist setShadowLayer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v0, v1

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    sub-float/2addr v0, v1

    const v1, 0x3f13cd36

    div-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->saveAttributeToSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
