.class final Landroid/view/inspector/IntFlagMapping$Flag;
.super Ljava/lang/Object;
.source "IntFlagMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/IntFlagMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Flag"
.end annotation


# instance fields
.field private final blacklist mMask:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTarget:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/view/inspector/IntFlagMapping$Flag;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misEnabledFor(Landroid/view/inspector/IntFlagMapping$Flag;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inspector/IntFlagMapping$Flag;->isEnabledFor(I)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mTarget:I

    iput p1, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mMask:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/lang/String;Landroid/view/inspector/IntFlagMapping-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inspector/IntFlagMapping$Flag;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private blacklist isEnabledFor(I)Z
    .locals 1

    iget v0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mMask:I

    and-int/2addr p1, v0

    iget p0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mTarget:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
