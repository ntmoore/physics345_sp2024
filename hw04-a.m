# Nathan Moore, Winona State University
#
# generate a list of N atoms
N=256;
atom = ones(N,1);

moves_needed=N*N;
num_moves=0;
# https://docs.octave.org/latest/The-while-Statement.html
while(num_moves < moves_needed)

  # pick out two atoms that will exchange energy
  # https://octave.sourceforge.io/octave/function/rand.html
  i=ceil(rand()*N);  # giver
  j=ceil(rand()*N);  # receiver

  # if the giver has energy to give...
  # https://docs.octave.org/v8.4.0/The-if-Statement.html
  if(atom(i,1)>0)
    # move energy from i to j
    atom(i,1) = atom(i,1) - 1;
    atom(j,1) = atom(j,1) + 1;
    num_moves = num_moves + 1;
  endif

endwhile

# https://octave.sourceforge.io/octave/function/hist.html
norm=1.0;
num_bins=floor(sqrt(N))
hist(atom,num_bins,norm)

