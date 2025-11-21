.class public Landroid/filterfw/core/ProgramVariable;
.super Ljava/lang/Object;
.source "ProgramVariable.java"


# instance fields
.field private greylist-max-o mProgram:Landroid/filterfw/core/Program;

.field private greylist-max-o mVarName:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/Program;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    iput-object p2, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist-max-o getProgram()Landroid/filterfw/core/Program;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    return-object p0
.end method

.method public greylist-max-o getValue()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/Program;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to get program variable \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' but the program is null!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getVariableName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o setValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to set program variable \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' but the program is null!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
