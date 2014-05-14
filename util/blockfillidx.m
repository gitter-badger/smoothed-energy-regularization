%%  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Smoothed Quadratic Energies on Meshes
%%  ACM TOG - J. Martinez Esturo, C. Rössl, and H. Theisel
%%  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [i,j]=blockfillidx(bm,bn,blknum)
%BLOCKFILLIDX Returns the index arrays i,j (1 x nnz)
% suitable to be used for sparse matrix filling
% of blknum consecutive block structures of size bm x bn
% in column major order.

i=reshape(repmat(reshape(bsxfun(@plus,repmat(1:bm:bm*blknum,bm,1),(0:(bm-1))'),bm,1,[]),1,bn),bm,[]);
j=repmat((1:blknum*bn)',[1 bm])';
end
