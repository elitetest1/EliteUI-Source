.class public interface abstract Landroid/sec/enterprise/auditlog/AuditEvent;
.super Ljava/lang/Object;
.source "AuditEvent.java"


# virtual methods
.method public abstract blacklist getComponent()Ljava/lang/String;
.end method

.method public abstract blacklist getGroup()I
.end method

.method public abstract blacklist getMessage()Ljava/lang/String;
.end method

.method public abstract blacklist getOutcome()Z
.end method

.method public abstract blacklist getPrivacy()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getRedactedMessage()Ljava/lang/String;
.end method

.method public abstract blacklist getSeverity()I
.end method

.method public abstract blacklist getUserId()I
.end method

.method public abstract blacklist isPrivileged()Z
.end method
