.class public interface abstract Lcom/android/internal/protolog/common/IProtoLogGroup;
.super Ljava/lang/Object;
.source "IProtoLogGroup.java"


# virtual methods
.method public abstract blacklist getId()I
.end method

.method public abstract blacklist getTag()Ljava/lang/String;
.end method

.method public abstract blacklist isEnabled()Z
.end method

.method public blacklist isLogToAny()Z
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result p0

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

.method public abstract blacklist isLogToLogcat()Z
.end method

.method public abstract blacklist isLogToProto()Z
.end method

.method public abstract blacklist name()Ljava/lang/String;
.end method

.method public abstract blacklist setLogToLogcat(Z)V
.end method

.method public abstract blacklist setLogToProto(Z)V
.end method
