.class public final enum Landroid/hardware/input/InputGestureData$Filter;
.super Ljava/lang/Enum;
.source "InputGestureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/input/InputGestureData$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/input/InputGestureData$Filter;

.field public static final enum blacklist KEY:Landroid/hardware/input/InputGestureData$Filter;

.field public static final enum blacklist TOUCHPAD:Landroid/hardware/input/InputGestureData$Filter;


# instance fields
.field private final blacklist mTag:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/hardware/input/InputGestureData$Filter;
    .locals 2

    sget-object v0, Landroid/hardware/input/InputGestureData$Filter;->KEY:Landroid/hardware/input/InputGestureData$Filter;

    sget-object v1, Landroid/hardware/input/InputGestureData$Filter;->TOUCHPAD:Landroid/hardware/input/InputGestureData$Filter;

    filled-new-array {v0, v1}, [Landroid/hardware/input/InputGestureData$Filter;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/hardware/input/InputGestureData$Filter;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputGestureData$Filter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputGestureData$Filter;->KEY:Landroid/hardware/input/InputGestureData$Filter;

    new-instance v0, Landroid/hardware/input/InputGestureData$Filter;

    const-string v1, "TOUCHPAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputGestureData$Filter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputGestureData$Filter;->TOUCHPAD:Landroid/hardware/input/InputGestureData$Filter;

    invoke-static {}, Landroid/hardware/input/InputGestureData$Filter;->$values()[Landroid/hardware/input/InputGestureData$Filter;

    move-result-object v0

    sput-object v0, Landroid/hardware/input/InputGestureData$Filter;->$VALUES:[Landroid/hardware/input/InputGestureData$Filter;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/hardware/input/InputGestureData$Filter;->mTag:I

    return-void
.end method

.method public static blacklist of(I)Landroid/hardware/input/InputGestureData$Filter;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroid/hardware/input/InputGestureData$Filter;->TOUCHPAD:Landroid/hardware/input/InputGestureData$Filter;

    return-object p0

    :cond_1
    sget-object p0, Landroid/hardware/input/InputGestureData$Filter;->KEY:Landroid/hardware/input/InputGestureData$Filter;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/hardware/input/InputGestureData$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/hardware/input/InputGestureData$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData$Filter;

    return-object p0
.end method

.method public static blacklist values()[Landroid/hardware/input/InputGestureData$Filter;
    .locals 1

    sget-object v0, Landroid/hardware/input/InputGestureData$Filter;->$VALUES:[Landroid/hardware/input/InputGestureData$Filter;

    invoke-virtual {v0}, [Landroid/hardware/input/InputGestureData$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/input/InputGestureData$Filter;

    return-object v0
.end method


# virtual methods
.method public blacklist getTag()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/InputGestureData$Filter;->mTag:I

    return p0
.end method

.method public blacklist matches(Landroid/hardware/input/InputGestureData;)Z
    .locals 0

    iget p0, p0, Landroid/hardware/input/InputGestureData$Filter;->mTag:I

    invoke-static {p1}, Landroid/hardware/input/InputGestureData;->-$$Nest$fgetmInputGestureData(Landroid/hardware/input/InputGestureData;)Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    iget-object p1, p1, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    invoke-virtual {p1}, Landroid/hardware/input/AidlInputGestureData$Trigger;->getTag()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
