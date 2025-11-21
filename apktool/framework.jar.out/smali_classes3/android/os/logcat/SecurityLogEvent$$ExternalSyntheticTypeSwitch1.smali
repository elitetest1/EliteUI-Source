.class public final synthetic Landroid/os/logcat/SecurityLogEvent$$ExternalSyntheticTypeSwitch1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# static fields
.field public static synthetic blacklist switchCases:[Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist getSwitchCases()[Ljava/lang/Object;
    .locals 4

    sget-object v0, Landroid/os/logcat/SecurityLogEvent$$ExternalSyntheticTypeSwitch1;->switchCases:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/Float;

    const-class v3, Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/os/logcat/SecurityLogEvent$$ExternalSyntheticTypeSwitch1;->switchCases:[Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic blacklist m(Ljava/lang/Object;I[Ljava/lang/Object;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_3

    aget-object v0, p2, p1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x2

    return p0
.end method
