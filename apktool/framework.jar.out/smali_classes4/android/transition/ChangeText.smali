.class public Landroid/transition/ChangeText;
.super Landroid/transition/Transition;
.source "ChangeText.java"


# static fields
.field public static final greylist-max-o CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final greylist-max-o CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final greylist-max-o CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final greylist-max-o CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextChange"

.field private static final greylist-max-o PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final greylist-max-o PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final greylist-max-o PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final greylist-max-o PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mChangeBehavior:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I
    .locals 0

    iget p0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "android:textchange:textSelectionStart"

    const-string v1, "android:textchange:textSelectionEnd"

    const-string v2, "android:textchange:text"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:textchange:text"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textSelectionStart"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textSelectionEnd"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-lez p0, :cond_1

    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "android:textchange:textColor"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private greylist-max-o setSelection(Landroid/widget/EditText;II)V
    .locals 0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    if-eqz v0, :cond_11

    if-eqz v2, :cond_11

    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-nez v3, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:textchange:text"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    move-object v7, v5

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    :cond_2
    move-object v4, v6

    instance-of v5, v3, Landroid/widget/EditText;

    const/4 v6, -0x1

    if-eqz v5, :cond_7

    const-string v9, "android:textchange:textSelectionStart"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    :cond_3
    move v10, v6

    :goto_1
    const-string v11, "android:textchange:textSelectionEnd"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_2

    :cond_4
    move v12, v10

    :goto_2
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_5
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_3

    :cond_6
    move v9, v6

    :goto_3
    move v11, v9

    move v9, v12

    goto :goto_4

    :cond_7
    move v9, v6

    move v10, v9

    move v11, v10

    :goto_4
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    iget v12, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_8

    move-object v5, v3

    check-cast v5, Landroid/widget/EditText;

    invoke-direct {v1, v5, v10, v9}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    :cond_8
    iget v5, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v12, 0x0

    if-nez v5, :cond_9

    new-array v0, v13, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v0, Landroid/transition/ChangeText$1;

    move v5, v6

    move-object v2, v7

    move v6, v11

    invoke-direct/range {v0 .. v6}, Landroid/transition/ChangeText$1;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_5
    move-object v11, v8

    goto/16 :goto_b

    :cond_9
    move v5, v6

    move v6, v11

    const-string v11, "android:textchange:textColor"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v11, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v14, 0x1

    const/4 v15, 0x3

    if-eq v11, v15, :cond_b

    if-ne v11, v14, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 p1, v7

    move v7, v2

    move-object/from16 v2, p1

    const/16 p1, 0x0

    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    filled-new-array {v11, v12}, [I

    move-result-object v11

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v11

    const/16 p1, 0x0

    new-instance v8, Landroid/transition/ChangeText$2;

    invoke-direct {v8, v1, v3, v0}, Landroid/transition/ChangeText$2;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v11, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/transition/ChangeText$3;

    move-object/from16 v16, v7

    move v7, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeText$3;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v8, v11

    :goto_7
    iget v0, v1, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-eq v0, v15, :cond_d

    if-ne v0, v13, :cond_c

    goto :goto_8

    :cond_c
    move-object/from16 v0, p1

    goto :goto_9

    :cond_d
    :goto_8
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    filled-new-array {v12, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v11, Landroid/transition/ChangeText$4;

    invoke-direct {v11, v1, v3, v7}, Landroid/transition/ChangeText$4;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v11, Landroid/transition/ChangeText$5;

    invoke-direct {v11, v1, v3, v7}, Landroid/transition/ChangeText$5;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_9
    if-eqz v8, :cond_e

    if-eqz v0, :cond_e

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v15, v11

    check-cast v15, Landroid/animation/AnimatorSet;

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v8, v13, v12

    aput-object v0, v13, v14

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_a

    :cond_e
    if-eqz v8, :cond_f

    move v12, v7

    goto/16 :goto_5

    :cond_f
    move-object v11, v0

    :goto_a
    move v12, v7

    :goto_b
    new-instance v0, Landroid/transition/ChangeText$6;

    move-object v7, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v8, v10

    move v6, v12

    invoke-direct/range {v0 .. v9}, Landroid/transition/ChangeText$6;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Landroid/transition/ChangeText;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object v11

    :cond_10
    const/16 p1, 0x0

    return-object p1

    :cond_11
    :goto_c
    const/16 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public greylist-max-o getChangeBehavior()I
    .locals 0

    iget p0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return p0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o setChangeBehavior(I)Landroid/transition/ChangeText;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    :cond_0
    return-object p0
.end method
