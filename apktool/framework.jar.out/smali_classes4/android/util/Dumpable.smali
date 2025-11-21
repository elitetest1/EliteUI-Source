.class public interface abstract Landroid/util/Dumpable;
.super Ljava/lang/Object;
.source "Dumpable.java"


# virtual methods
.method public abstract whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Landroid/util/Dumpable;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
