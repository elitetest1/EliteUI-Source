.class public Landroid/filterpacks/text/StringLogger;
.super Landroid/filterfw/core/Filter;
.source "StringLogger.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    const-string/jumbo p1, "string"

    invoke-virtual {p0, p1}, Landroid/filterpacks/text/StringLogger;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringLogger"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "string"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/text/StringLogger;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method
