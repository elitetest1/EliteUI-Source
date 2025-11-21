.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type;,
        Landroid/view/WindowInsets$Builder;,
        Landroid/view/WindowInsets$Side;
    }
.end annotation


# static fields
.field public static final whitelist CONSUMED:Landroid/view/WindowInsets;


# instance fields
.field private final blacklist mCompatIgnoreVisibility:Z

.field private blacklist mCompatInsetsTypes:I

.field private blacklist mConsumedCaptionType:I

.field private final greylist-max-o mDisplayCutout:Landroid/view/DisplayCutout;

.field private final greylist-max-o mDisplayCutoutConsumed:Z

.field private final blacklist mDisplayCutoutForUdc:Landroid/view/DisplayCutout;

.field private final blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private final blacklist mForceConsumingOpaqueCaptionBar:Z

.field private final blacklist mForceConsumingTypes:I

.field private final blacklist mFrameHeight:I

.field private final blacklist mFrameWidth:I

.field private final greylist-max-o mIsRound:Z

.field private final blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private final greylist-max-o mStableInsetsConsumed:Z

.field private final blacklist mSuppressScrimTypes:I

.field private final greylist-max-o mSystemWindowInsetsConsumed:Z

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConsumedCaptionType(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayShape(Landroid/view/WindowInsets;)Landroid/view/DisplayShape;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceConsumingOpaqueCaptionBar(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceConsumingTypes(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameHeight(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameWidth(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuppressScrimTypes(Landroid/view/WindowInsets;)I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeMaxBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .locals 0

    invoke-static {p0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/WindowInsets;->setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 19

    new-instance v0, Landroid/view/WindowInsets;

    const/4 v1, 0x0

    move-object v2, v1

    invoke-static {v2}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v3, v2

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatVisibilityMap([Landroid/graphics/Insets;)[Z

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v13

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    sput-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor greylist <init>(Landroid/graphics/Rect;)V
    .locals 19

    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    const/16 v0, 0xa

    new-array v3, v0, [Z

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v13

    new-array v15, v0, [[Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .locals 22

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v1

    :goto_0
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v5, v1

    :goto_1
    iget-object v6, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v7, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v8, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v9, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v10, v0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    iget v11, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v12

    iget-object v13, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v14, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v15, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v3, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget-boolean v2, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v2, :cond_2

    const/16 v18, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v18, v2

    :goto_2
    iget-boolean v2, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v2, :cond_3

    const/16 v19, 0x0

    goto :goto_3

    :cond_3
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v19, v2

    :goto_3
    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v21, v0

    move/from16 v16, v1

    move/from16 v20, v2

    move/from16 v17, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v21}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V
    .locals 20

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v19}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;IILandroid/view/DisplayCutout;)V

    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;IILandroid/view/DisplayCutout;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_1

    new-array p1, v3, [Landroid/graphics/Insets;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Insets;

    :goto_1
    iput-object p1, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    if-nez p2, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz p1, :cond_3

    new-array p2, v3, [Landroid/graphics/Insets;

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/Insets;

    :goto_3
    iput-object p2, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    iput-object p3, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iput p5, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iput-boolean p6, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iput p8, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    move/from16 p2, p13

    iput p2, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    move/from16 p2, p14

    iput-boolean p2, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-nez p9, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-nez v0, :cond_5

    invoke-virtual {p9}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    const/4 p9, 0x0

    :cond_6
    iput-object p9, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iput-object p10, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iput-object p11, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    move-object/from16 p2, p12

    iput-object p2, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    if-nez v2, :cond_8

    if-nez p15, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual/range {p15 .. p15}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Landroid/graphics/Rect;

    goto :goto_6

    :cond_8
    :goto_5
    new-array p2, v3, [[Landroid/graphics/Rect;

    :goto_6
    iput-object p2, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    if-nez p1, :cond_a

    if-nez p16, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual/range {p16 .. p16}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/graphics/Rect;

    goto :goto_8

    :cond_a
    :goto_7
    new-array p1, v3, [[Landroid/graphics/Rect;

    :goto_8
    iput-object p1, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move/from16 p1, p17

    iput p1, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 p1, p18

    iput p1, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/view/WindowInsets;->mDisplayCutoutForUdc:Landroid/view/DisplayCutout;

    iput p7, p0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    return-void
.end method

.method public static blacklist assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    aput-object p1, p0, v0

    return-void
.end method

.method public static blacklist createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/Insets;

    invoke-static {v0, p0}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private static blacklist createCompatVisibilityMap([Landroid/graphics/Insets;)[Z
    .locals 6

    const/16 v0, 0xa

    new-array v0, v0, [Z

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x200

    if-gt v2, v3, :cond_2

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v3

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    aget-object v5, p0, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    aput-boolean v1, v0, v3

    :cond_1
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static blacklist displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez p0, :cond_1

    sget-object p0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    :cond_1
    return-object p0
.end method

.method private blacklist getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_3

    and-int v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    aget-object v1, p1, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    move-object p0, v1

    goto :goto_1

    :cond_2
    array-length v2, p0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Landroid/graphics/Rect;

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v3, v1

    invoke-static {v1, v4, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_3

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-object v2, p0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {v0, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p0

    :cond_4
    return-object v0
.end method

.method private greylist hidden_getDisplayCutoutForUdc()Landroid/view/DisplayCutout;
    .locals 0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutoutForUdc()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static blacklist insetBoundingRects([Landroid/graphics/Rect;IIIIII)[Landroid/graphics/Rect;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v4, p0, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/view/WindowInsets;->insetRect(Landroid/graphics/Rect;IIIIII)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Landroid/graphics/Rect;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Rect;

    return-object p0
.end method

.method static blacklist insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;
    .locals 10

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_4

    aget-object v3, p0, v0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Landroid/view/WindowInsets;->insetBoundingRects([Landroid/graphics/Rect;IIIIII)[Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {p0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Landroid/graphics/Rect;

    const/4 v1, 0x1

    :cond_2
    aput-object v2, p0, v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method static blacklist insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;
    .locals 2

    iget v0, p0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v1, p0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, p3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, p4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p4, p0, Landroid/graphics/Insets;->left:I

    if-ne v0, p4, :cond_0

    iget p4, p0, Landroid/graphics/Insets;->top:I

    if-ne p2, p4, :cond_0

    iget p4, p0, Landroid/graphics/Insets;->right:I

    if-ne p3, p4, :cond_0

    iget p4, p0, Landroid/graphics/Insets;->bottom:I

    if-ne p1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p2, p3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;

    move-result-object v3

    if-eq v3, v2, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {p0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Insets;

    const/4 v1, 0x1

    :cond_1
    aput-object v3, p0, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private static blacklist insetRect(Landroid/graphics/Rect;IIIIII)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    sub-int/2addr p6, p4

    invoke-direct {v1, p1, p2, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p3, v1, p0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-int p0, p1

    neg-int p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object p3

    :cond_1
    return-object v0
.end method

.method private static blacklist setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    and-int v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    aput-object p2, p0, v1

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public greylist consumeCaptionInsets()Landroid/view/WindowInsets;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    and-int/lit8 v15, v1, -0x5

    iput v15, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    new-instance v2, Landroid/view/WindowInsets;

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/16 v21, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v3, v21

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v1

    :goto_0
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    move-object/from16 v4, v21

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v7, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v8, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v9, v0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    iget v10, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget-object v11, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v12, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v13, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v14, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    move/from16 v16, v1

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v18, v1

    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v20, v0

    move/from16 v19, v1

    invoke-direct/range {v2 .. v20}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget-object v1, v2, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v21, v1, v0

    iget-object v1, v2, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v21, v1, v0

    iget-object v1, v2, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    return-object v2
.end method

.method public whitelist consumeDisplayCutout()Landroid/view/WindowInsets;
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-boolean v2, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    :goto_0
    iget-boolean v5, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v5, :cond_1

    move-object v6, v3

    move-object v7, v6

    goto :goto_1

    :cond_1
    iget-object v6, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v7, v3

    :goto_1
    iget-object v3, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    move-object v8, v1

    move-object v1, v4

    iget-boolean v4, v0, Landroid/view/WindowInsets;->mIsRound:Z

    move v9, v5

    iget v5, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    move v10, v2

    move-object v2, v6

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    move-object v11, v7

    iget v7, v0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    move-object v12, v8

    iget v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    move v13, v10

    iget-object v10, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    move-object v14, v11

    iget-object v11, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    move-object v15, v12

    iget-object v12, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    move/from16 v16, v13

    iget v13, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    move-object/from16 v17, v14

    iget-boolean v14, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v16, :cond_2

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    goto :goto_2

    :cond_2
    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    :goto_2
    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    iget-object v9, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v17, v9

    :goto_3
    iget v9, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v18, v0

    move-object v0, v15

    move-object v15, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v9

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-object v0
.end method

.method public blacklist consumeDisplayCutout(Z)Landroid/view/WindowInsets;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-boolean v2, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    :goto_0
    iget-boolean v5, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v5, :cond_1

    move-object v6, v3

    move-object v7, v6

    goto :goto_1

    :cond_1
    iget-object v6, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v7, v3

    :goto_1
    iget-object v3, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    move-object v8, v1

    move-object v1, v4

    iget-boolean v4, v0, Landroid/view/WindowInsets;->mIsRound:Z

    move v9, v5

    iget v5, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    move v10, v2

    move-object v2, v6

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    move-object v11, v7

    iget v7, v0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    move-object v12, v8

    iget v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    move v13, v10

    iget-object v10, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    move-object v14, v11

    iget-object v11, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    move-object v15, v12

    iget-object v12, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    move/from16 v16, v13

    iget v13, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    move-object/from16 v17, v14

    iget-boolean v14, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v16, :cond_2

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    goto :goto_2

    :cond_2
    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    :goto_2
    if-eqz v9, :cond_3

    move-object/from16 v9, v17

    goto :goto_3

    :cond_3
    iget-object v9, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    :goto_3
    move-object/from16 v18, v1

    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v19, v1

    iget v1, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    if-eqz p1, :cond_4

    iget-object v0, v0, Landroid/view/WindowInsets;->mDisplayCutoutForUdc:Landroid/view/DisplayCutout;

    goto :goto_4

    :cond_4
    move-object/from16 v0, v17

    :goto_4
    move-object/from16 v17, v15

    move-object/from16 v15, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    const/4 v9, 0x0

    move/from16 v20, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v17, v20

    invoke-direct/range {v0 .. v19}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;IILandroid/view/DisplayCutout;)V

    move-object v15, v0

    return-object v15
.end method

.method public whitelist consumeStableInsets()Landroid/view/WindowInsets;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public whitelist consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-object v3, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v4, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v5, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v7, v0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    iget v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget v2, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v9

    and-int/2addr v2, v9

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v2

    :goto_0
    move-object v9, v2

    iget-object v10, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v11, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v12, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v13, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v14, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v18, v0

    move-object v0, v1

    const/4 v1, 0x0

    move/from16 v17, v2

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Landroid/view/WindowInsets;

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroid/view/WindowInsets;

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mIsRound:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget v3, p1, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget v3, p1, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    iget-boolean v3, p1, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p1, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v3, p1, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v3, p1, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v3, p1, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v3, p1, Landroid/view/WindowInsets;->mFrameWidth:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    iget p1, p1, Landroid/view/WindowInsets;->mFrameHeight:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getBoundingRects(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowInsets;->getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getBoundingRectsIgnoringVisibility(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowInsets;->getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to query the bounding rects for IME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getConsumedCaptionType()I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    return p0
.end method

.method public whitelist getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method public blacklist getDisplayCutoutForUdc()Landroid/view/DisplayCutout;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayCutoutForUdc:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method public whitelist getDisplayShape()Landroid/view/DisplayShape;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    return-object p0
.end method

.method public blacklist getForceConsumingTypes()I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    return p0
.end method

.method public whitelist getFrame()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget p0, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public whitelist getInsets(I)Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {p0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {p0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to query the maximum insets for IME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getMandatorySystemGestureInsets()Landroid/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPrivacyIndicatorBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/PrivacyIndicatorBounds;->getStaticPrivacyIndicatorBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getStableInsetBottom()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0
.end method

.method public whitelist getStableInsetLeft()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->left:I

    return p0
.end method

.method public whitelist getStableInsetRight()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->right:I

    return p0
.end method

.method public whitelist getStableInsetTop()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    return p0
.end method

.method public whitelist getStableInsets()Landroid/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSuppressScrimTypes()I
    .locals 0

    iget p0, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    return p0
.end method

.method public whitelist getSystemGestureInsets()Landroid/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v0, 0x10

    invoke-static {p0, v0}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSystemWindowInsetBottom()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0
.end method

.method public whitelist getSystemWindowInsetLeft()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->left:I

    return p0
.end method

.method public whitelist getSystemWindowInsetRight()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->right:I

    return p0
.end method

.method public whitelist getSystemWindowInsetTop()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    return p0
.end method

.method public whitelist getSystemWindowInsets()Landroid/graphics/Insets;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    :goto_0
    iget v1, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public blacklist getSystemWindowInsetsAsRect()Landroid/graphics/Rect;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public whitelist getTappableElementInsets()Landroid/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v0, 0x40

    invoke-static {p0, v0}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public whitelist hasInsets()Z
    .locals 2

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist hasStableInsets()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object p0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p0, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist hasSystemWindowInsets()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p0, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mIsRound:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v7, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget v1, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v1, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-object v14, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v15, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist inset(IIII)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public whitelist inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o inset(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public blacklist insetUnchecked(IIII)Landroid/view/WindowInsets;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    new-instance v8, Landroid/view/WindowInsets;

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    move-object v10, v9

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v10, v1

    :goto_0
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    move-object v11, v9

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v11, v1

    :goto_1
    iget-object v12, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v13, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v14, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v15, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v1, v0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    move-object/from16 v16, v8

    iget v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v6, :cond_2

    move-object/from16 v17, v9

    goto :goto_3

    :cond_2
    iget-object v6, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v6, :cond_3

    sget-object v6, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v6

    :goto_2
    move-object/from16 v17, v6

    :goto_3
    iget-object v6, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v6, :cond_4

    sget-object v6, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v6

    :goto_4
    move-object/from16 v18, v6

    iget-object v6, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v6, :cond_5

    move-object/from16 v19, v9

    goto :goto_5

    :cond_5
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v6

    move-object/from16 v19, v6

    :goto_5
    move-object/from16 v20, v12

    iget-object v12, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    move/from16 v21, v13

    iget v13, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    move/from16 v22, v14

    iget-boolean v14, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v6, :cond_6

    move/from16 v23, v1

    move-object/from16 v24, v9

    goto :goto_6

    :cond_6
    move v7, v1

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v23, v7

    iget v7, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-static/range {v1 .. v7}, Landroid/view/WindowInsets;->insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v24, v1

    :goto_6
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v7, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Landroid/view/WindowInsets;->insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;

    move-result-object v9

    :goto_7
    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    sub-int v1, v1, p1

    sub-int v1, v1, p3

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    sub-int v0, v0, p2

    sub-int v0, v0, p4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v2, v18

    move/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v17

    move/from16 v17, v1

    move-object v1, v10

    move-object v10, v2

    move-object v2, v11

    move v6, v15

    move-object/from16 v11, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v7, v23

    move-object/from16 v15, v24

    invoke-direct/range {v0 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    move-object/from16 v16, v0

    return-object v16
.end method

.method public whitelist isConsumed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isForceConsumingOpaqueCaptionBar()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    return p0
.end method

.method public whitelist isRound()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return p0
.end method

.method greylist-max-o isSystemWindowInsetsConsumed()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return p0
.end method

.method public whitelist isVisible(I)Z
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_2

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public greylist removeCutoutInsets(Z)Landroid/view/WindowInsets;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    new-instance v2, Landroid/view/WindowInsets;

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/16 v22, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v3, v22

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v1

    :goto_0
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_1

    move-object/from16 v4, v22

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v6, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v7, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v8, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v9, v0, Landroid/view/WindowInsets;->mConsumedCaptionType:I

    iget v10, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    sget-object v11, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iget-object v12, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v13, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v14, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v15, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    move/from16 v16, v1

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v18, v1

    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move/from16 v19, v1

    iget v1, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    sget-boolean v20, Lcom/samsung/android/rune/CoreRune;->FW_CAN_DISPATCH_UDC_CUTOUT:Z

    if-eqz v20, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, v0, Landroid/view/WindowInsets;->mDisplayCutoutForUdc:Landroid/view/DisplayCutout;

    move-object/from16 v21, v0

    goto :goto_2

    :cond_2
    move-object/from16 v21, v22

    :goto_2
    move/from16 v20, v1

    invoke-direct/range {v2 .. v21}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;IILandroid/view/DisplayCutout;)V

    const/16 v0, 0x80

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget-object v1, v2, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v22, v1, v0

    iget-object v1, v2, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v22, v1, v0

    iget-object v1, v2, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    return-object v2
.end method

.method public whitelist replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public whitelist replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowInsets{\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const-string v3, "\n    "

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aget-object v2, v2, v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    aget-boolean v5, v5, v1

    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v6, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v6, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    const/4 v6, 0x1

    shl-int/2addr v6, v1

    invoke-static {v6}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " vis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " boundingRects="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxBoundingRects="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    const-string v2, ""

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cutout="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutoutForUdc:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cutoutForUdc="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/WindowInsets;->mDisplayCutoutForUdc:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "roundedCorners="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "privacyIndicatorBounds="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "displayShape="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "forceConsumingTypes="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "forceConsumingOpaqueCaptionBar="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "suppressScrimTypes="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "compatInsetsTypes="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "compatIgnoreVisibility="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "systemWindowInsetsConsumed="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stableInsetsConsumed="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "displayCutoutConsumed="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v2, "round"

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "frameWidth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "frameHeight="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
